resource "google_compute_instance" "vm_instance" {
  name = "test-instance-sv01"
  machine_type = "e2-micro"
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    subnetwork = var.public_subnetwork_name
    access_config {
    }
  }
}
