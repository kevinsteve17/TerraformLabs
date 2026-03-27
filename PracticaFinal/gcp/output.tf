output "gpc_id" {
  value = google_compute_network.mygpcvpc.id
}

output "gpcsubnet_id" {
  value = google_compute_subnetwork.mygpcsubnet.id
}