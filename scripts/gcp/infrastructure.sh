#!/usr/bin/env bash
source config.shlib # load the config library functions
project_id=$(gcloud config get-value project)
project_number=$(gcloud projects describe ${project_id} | grep projectNumber | sed 's/projectNumber: //g' | tr -d [[:punct:]])
deploy_microservices="$(config_get deploy_microservices)"
repo_owner="$(config_get repo_owner)"

if [ "$repo_owner" = '' ]; then
    echo ----------------- 1>&2
    echo ERROR 1>&2
    echo The \"repo_owner\" must be set to your \"GITHUB_ID\" 1>&2
    echo Script was not executed, Kindly update the property value in config.cfg.defaults and rerun the script 1>&2
    echo ----------------- 1>&2
else   
    echo Updating and Installing gcloud components 
    yes | gcloud components update
    yes | gcloud components install alpha
    yes | gcloud components install beta

    echo Provisioning infrastructure in ${project_id}
    echo project number is ${project_number}

    echo Granting "$(config_get cloudbuild_sa_role)" access to the Cloud Build Service Account
    gcloud projects add-iam-policy-binding ${project_id} --member "serviceAccount:${project_number}@cloudbuild.gserviceaccount.com" --role "$(config_get cloudbuild_sa_role)"

    echo Executing the Set Up GCP Infra pipeline
    gcloud builds submit --substitutions=_TRANSACTION_TOPIC_NAME="$(config_get transaction_topic_name)",_BALANCE_TOPIC_NAME="$(config_get balance_topic_name)"
    echo Task: Set Up GCP Infra pipeline executed, check the logs if its successful

    echo Creating Firestore Native Database
    gcloud alpha firestore databases create --region=europe-west
    echo Firestore Database Created

    if [ "$deploy_microservices" = true ]; then

        echo Deploying the Customer Service
        gcloud builds submit ../gcp-training-customer-service --config="../gcp-training-customer-service/cloudbuild.yaml" & \
        gcloud builds submit ../gcp-training-account-service --config="../gcp-training-account-service/cloudbuild.yaml"  & \
        gcloud builds submit ../gcp-training-cashier-service --config="../gcp-training-cashier-service/cloudbuild.yaml" & \
        gcloud builds submit ../gcp-training-transaction-service --config="../gcp-training-transaction-service/cloudbuild.yaml" & \
        gcloud builds submit ../gcp-training-balance-service --config="../gcp-training-balance-service/cloudbuild.yaml"
        customer_service_url=$(gcloud run services describe gcp-training-customer-service --platform=managed --region=europe-west1 | grep https://gcp-training-customer-service)
        account_service_url=$(gcloud run services describe gcp-training-account-service --platform=managed --region=europe-west1 | grep https://gcp-training-account-service)
        cashier_service_url=$(gcloud run services describe gcp-training-cashier-service --platform=managed --region=europe-west1 | grep https://gcp-training-cashier-service)
        transaction_service_url=$(gcloud run services describe gcp-training-transaction-service --platform=managed --region=europe-west1 | grep https://gcp-training-transaction-service)
        balance_service_url=$(gcloud run services describe gcp-training-balance-service --platform=managed --region=europe-west1 | grep https://gcp-training-balance-service)

        gcloud run deploy gcp-training-account-service \
            --allow-unauthenticated \
            --region europe-west1 \
            --image=eu.gcr.io/${project_id}/gcp-training-account-service:latest \
            --platform=managed --update-env-vars=CUSTOMER_SERVICE_URL=${customer_service_url},ACCOUNT_NAMESPACE=accounts & \
        gcloud run deploy gcp-training-transaction-service \
            --allow-unauthenticated \
            --region europe-west1 \
            --image=eu.gcr.io/${project_id}/gcp-training-transaction-service:latest \
            --platform=managed --update-env-vars=ACCOUNTS_SERVICE_URL=${account_service_url},TRANSACTION_NAMESPACE=transactions,BALANCE_TOPIC_ID=balance

        echo -------------------------------------------------------------------------------------------------------------------------
        echo Exporting all the Microservice URLs to environment variables and create a microservice_url_env.sh for further references.
        echo -------------------------------------------------------------------------------------------------------------------------
        rm -f microservice_url_env.sh
        echo export CUSTOMER_SERVICE_URL=${customer_service_url} >>microservice_url_env.sh
        echo export ACCOUNT_SERVICE_URL=${account_service_url} >>microservice_url_env.sh
        echo export CASHIER_SERVICE_URL=${cashier_service_url} >>microservice_url_env.sh
        echo export TRANSACTION_SERVICE_URL=${transaction_service_url} >>microservice_url_env.sh
        echo export BALANCE_SERVICE_URL=${balance_service_url} >>microservice_url_env.sh
        . microservice_url_env.sh

        echo Executing the Smoke Tests in Cloud Build Pipeline

        gcloud builds submit \
            --substitutions=_CUSTOMER_SERVICE_URL=$CUSTOMER_SERVICE_URL,_ACCOUNT_SERVICE_URL=$ACCOUNT_SERVICE_URL,_CASHIER_SERVICE_URL=$CASHIER_SERVICE_URL,_TRANSACTION_SERVICE_URL=$TRANSACTION_SERVICE_URL,_BALANCE_SERVICE_URL=$BALANCE_SERVICE_URL \
            ../gcp-training-microservices-smoke-test \
            --config="../gcp-training-microservices-smoke-test/cloudbuild.yaml"

        echo Creating the Cloud Build Triggers for each microservice
        gcloud builds submit --config=cloudbuild_create_triggers.yaml --substitutions=_REPO_OWNER="$repo_owner",_CUSTOMER_SERVICE_URL=$CUSTOMER_SERVICE_URL,_ACCOUNTS_SERVICE_URL=$ACCOUNT_SERVICE_URL
        echo Creating the Cloud Build Triggers Created
    else
        echo Skipped microservices deployment
    fi
fi