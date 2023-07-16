resource "google_compute_subnetwork" "public" {
    name = var.vpc_name
    ip_cidr_range = var.public_cidr
    network = google_compute_network.vpc.self_link
    # log_config {
        # metadata = "INCLUDE_ALL_METADATA"
    # }
}
