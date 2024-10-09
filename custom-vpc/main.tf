resource "google_compute_network" "custom-vpc" {
    name="custom-vpc"
    auto_create_subnetworks = "false"
    routing_mode = "GLOBAL"
    description = "Custom VPC"
    mtu = 1460
    project = "testing-one-437506"
}
resource "google_compute_subnetwork" "subnet1" {
    name = "subnet1"
    region = "asia-south1"
    network = google_compute_network.custom-vpc.name
    ip_cidr_range = "10.0.1.0/24"
    depends_on = [ google_compute_network.custom-vpc ]
    project = "testing-one-437506"
}
resource "google_compute_subnetwork" "subnet2" {
    name="subnet2"
    region = "asia-south2"
    network = google_compute_network.custom-vpc.name
    ip_cidr_range = "10.0.2.0/24"
    depends_on = [ google_compute_network.custom-vpc ]
    project = "testing-one-437506"
  
}