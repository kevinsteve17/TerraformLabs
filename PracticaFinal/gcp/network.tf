resource "google_compute_network" "mygpcvpc" {
  name                    = "gcp${terraform.workspace}vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "mygpcsubnet" {
  name          = "gpc${terraform.workspace}sbnt"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.mygpcvpc.id
}