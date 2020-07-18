variable "credentials_file" {}

variable "project" {}

variable "region" {
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}

variable "pubsub_topic_list" {
  description = "List of PubSub topics to be created for microservices."
  type        = list
}

variable "microservice_list" {
  description = "List of microservices"
  type        = list
}