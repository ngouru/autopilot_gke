terraform {
  backend "gcs" {
    prefix = "gke-poc-nonprod"
    bucket = "ttec-iac-terraform-state"
  }
}
