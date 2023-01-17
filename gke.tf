resource "google_container_cluster" "primary" {
  name     = "gke-cluster"
  location = var.zone
  initial_node_count  = 1
  machine_type = "e2-micro"
}
