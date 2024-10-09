variable "name" {
  default = "variable-instance"
}
variable "machine_type" {
  default = "n1-standard-1"

}
variable "zone" {
  default = "us-central1-a"

}
variable "project" {
  default = "testing-one-437506"

}
variable "boot_disk" {
    default = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
  
}
variable "network_interface" {
    default = "default"
  
}