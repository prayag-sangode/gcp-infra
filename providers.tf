provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "tfstate-bucket14"
    prefix = "terraform/state"
  }
}
