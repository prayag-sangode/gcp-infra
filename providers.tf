provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gcp-backend-19158"
    prefix = "terraform/state"
  }
}
