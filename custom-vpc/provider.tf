terraform {
  required_providers {
    google={
        source = "hashicorp/google"
        version = "4.51.0"
    }
  }
}
provider "google" {
  project = "testing-one-437506"
}