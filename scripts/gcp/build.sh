#
# build.sh 
# 
# builds the project
#

# Create a Google Kubernetes Engine cluster and make sure kubectl is pointing to the cluster.
gcloud services enable container.googleapis.com

gcloud container clusters create demo --enable-autoupgrade \
    --enable-autoscaling --min-nodes=3 --max-nodes=10 --num-nodes=5 --zone=us-central1-a

kubectl get nodes

# Enable Google Container Registry (GCR) on your GCP project and configure the docker CLI to 
# authenticate to GCR:

gcloud services enable containerregistry.googleapis.com

gcloud auth configure-docker -q

skaffold run --default-repo=gcr.io/toucan-283623