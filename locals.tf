
locals {
  project_id = data.terraform_remote_state.project_ids.outputs.projects.poc-burp-non-prod.project_id
  project_number = data.terraform_remote_state.project_ids.outputs.projects.poc-burp-non-prod.project_number
  nonprod_vpc_network = "vpc-engage-nonprod"
  nonprod_vpc_host = "network-hosts-8342"
  region = "us-east4"
  environment = var.environment
  machine_type = var.machine_type
}