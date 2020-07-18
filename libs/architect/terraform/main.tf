provider "google-beta" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
}

// //Bucket to store remote state
// resource "google_storage_bucket" "gcp-training-terraform-state" {
//   name     = "gcp-training-terraform-state"
//   location = var.region
// }