resource "google_app_engine_application" "app-engine" {
  project     = var.project
  location_id = var.region

  depends_on = [
    google_project_service.gcp_services
  ]
}

resource "null_resource" "firestore-instance" {
  provisioner "local-exec" {
    command     = "gcloud components install alpha && gcloud config set project ${var.project} && gcloud alpha firestore databases create --region=${var.region}"
    interpreter = ["/bin/bash", "-c"]
  }

  depends_on = [
    google_app_engine_application.app-engine
  ]
}

resource "google_pubsub_topic" "microservice-topic" {
  count   = length(var.pubsub_topic_list)
  name = var.pubsub_topic_list[count.index]

 depends_on = [
    google_project_service.gcp_services
  ]
}