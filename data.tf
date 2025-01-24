data "terraform_remote_state" "project_ids" {
  backend = "gcs"
  config = {
    prefix = "gcp-ttec-projects"
    bucket = "ttec-iac-terraform-state"
  }
}
data "google_compute_subnetwork" "poc-burp" {
  name   = "poc-burp"
  region = local.region
  project = local.nonprod_vpc_host
}
data "google_compute_network" "vpc-engage-nonprod" {
  name = "vpc-engage-nonprod"
  project = local.nonprod_vpc_host
}
data "google_project" "project_id" {
   project_id  = "poc-burp-non-prod-5f94"
}
data "google_compute_router"  "non-prod-cloud_router" {
  name   = "non-prod-cloud-nat"
  network = "vpc-engage-nonprod"
  region = local.region
  project = local.nonprod_vpc_host
}
data "google_compute_router_nat" "non-prod-cloud-nat" {
  name    = "non-prod-cloud-nat"
  router  = data.google_compute_router.non-prod-cloud_router.name
  region  = local.region
  project = local.nonprod_vpc_host
}
