# Provider configuration
provider "google" {
  region  = "us-west1"
  project = var.project_id
  zone    = "us-west1-a"
}

provider "google-beta" {
  region  = "us-west1"
  project = var.project_id
  zone    = "us-west1-a"
}

variable "project_id" {
  type        = string
  description = "GCP Project ID"
}