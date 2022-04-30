resource "google_project_service" "rungoogleapis" {
  project = var.project_id
  service = "run.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_cloud_run_service" "helloservice" {
  name     = "cloudrun-srv"
  location = "us-west1"

  metadata {
    namespace = var.project_id
  }

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  depends_on = [
    google_project_service.rungoogleapis
  ]
}