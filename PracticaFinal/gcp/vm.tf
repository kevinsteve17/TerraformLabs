resource "google_compute_instance" "mygpcvm" {
  name         = "gpc${terraform.workspace}vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"



  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.mygpcsubnet.id

    access_config {
    }
  }

  tags = [
    "owner-${var.tags["owner"]}",
    "${terraform.workspace}-vm"
  ]

}




