resource "null_resource" "microservice" {
  count = length(var.microservice_list)
  provisioner "local-exec" {
    command     = "gcloud builds submit ../../${var.microservice_list[count.index]} --config=../../${var.microservice_list[count.index]}/cloudbuild.yaml"
    interpreter = ["/bin/bash", "-c"]
  }
}
# resource "null_resource" "gcp-training-customer-service" {
#   provisioner "local-exec" {
#     command     = "gcloud builds submit ../../gcp-training-customer-service --config="../../gcp-training-customer-service/cloudbuild.yaml""
#     interpreter = ["/bin/bash", "-c"]
#   }
# }

# resource "null_resource" "gcp-training-account-service" {
#   provisioner "local-exec" {
#     command     = "gcloud builds submit ../../gcp-training-account-service --config="../../gcp-training-account-service/cloudbuild.yaml""
#     interpreter = ["/bin/bash", "-c"]
#   }
# }

# data "google_cloud_run_service" "service_url" {
#   name = "gcp-training-customer-service"
#   value = google_cloud_run_service.gcp-training-service.url
# }

# output "customer_url" {
#   value = google_cloud_run_service.service_url.url
# }