resource "google_container_cluster" "gke-priv-ap-cluster" {
  name     = "${local.environment}-gke-autop-cluster"
  location = local.region
  enable_autopilot = true
  project = data.google_project.project_id.project_id

  # Network
  network = data.google_compute_network.vpc-engage-nonprod.self_link
  subnetwork = data.google_compute_subnetwork.poc-burp.self_link


  # In production, change it to true (Enable it to avoid accidental deletion)
  deletion_protection = false
  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = true
  }
   ip_allocation_policy {
    #cluster_ipv4_cidr_block = "10.177.140.0/22"
    #services_ipv4_cidr_block = "100.96.145.0/24"
    cluster_secondary_range_name = data.google_compute_subnetwork.poc-burp.secondary_ip_range[0].range_name # pods range
    services_secondary_range_name = data.google_compute_subnetwork.poc-burp.secondary_ip_range[1].range_name  # services range
  }
  #cloud NAt 

  # Allow access to Kubernetes master API Endpoint
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
      display_name = "Internal-network"
    }
  }
}