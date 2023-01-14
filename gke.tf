resource "google_container_cluster" "primary" {
  name     = "gke-cluster"
  location = var.region

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  #remove_default_node_pool = true
  initial_node_count       = 1
}
