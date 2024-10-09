resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  project      = var.project
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.boot_disk
    }
  }
  network_interface {
    network = var.network_interface
  }
  
}