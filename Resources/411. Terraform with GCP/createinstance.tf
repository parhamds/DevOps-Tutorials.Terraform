provider "google" {
  credentials = file("<name_of_json_key_file.json>")

  project = "<project_name>"
  region = "us-east1"
  zone = "us-east1-c"

}

resource "google_compute_network" "vpc_network" {
  name = "practice-network"
  auto_create_subnetworks = "true"
}

# for external state file :
terraform {
  backend "gcs" {
    bucket = "<bucket_name>"
    prefix = "<created folder name in bucket>"
    credentials = file("<name_of_json_key_file.json>")
  }
}