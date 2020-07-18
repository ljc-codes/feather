credentials_file = "[PATH_CREDENTIAL_FILE/CREDENTIAL_FILE.json]"
project          = "[PROJECT_ID]"
region           = "europe-west"
// appengine-region = "europe-west"
// zone = "europe-west2-a"
gcp_service_list = [
  "cloudresourcemanager.googleapis.com",
  "iam.googleapis.com",
  "cloudfunctions.googleapis.com",
  "appengine.googleapis.com",
  "firestore.googleapis.com"
]
pubsub_topic_list = [
  "balance",
  "transactions"
]

microservice_list = [
  "gcp-training-customer-service",
  "gcp-training-account-service",
  "gcp-training-transaction-service",
  "gcp-training-balance-service",
  "gcp-training-cashier-service"
]