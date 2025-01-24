output "vpc_network_id" {
    value = data.google_compute_subnetwork.poc-burp.ip_cidr_range
}
output "subnet_name" {
   value = data.google_compute_subnetwork.poc-burp.name
}
output "vpc_name" {
  value = data.google_compute_network.vpc-engage-nonprod.name
}
output "subnet_secondary_ip" {
  value = data.google_compute_subnetwork.poc-burp.secondary_ip_range
}
output "project_id" {
  value = data.google_project.project_id.project_id
}
output "project_ids" {
  value = data.google_project.project_id.id
}
output "google_compute_subnetwork" {
  value = data.google_compute_subnetwork.poc-burp.ip_cidr_range
}
# output "gke_cluster_name" {
#   value = google_container_cluster.gke-standard-cluster.name
# }
# output "gke_cluster_location" {
#   value = google_container_cluster.gke-standard-cluster.location
# }
# output "gke_cluster_master_version" {
#   value = google_container_cluster.gke-standard-cluster.master_version
# }
# output "gke_cluster_node_version" {
#   value = google_container_cluster.gke-standard-cluster.node_version  
# }
# output "gke_cluster_endpoint" {
#   value = google_container_cluster.gke-standard-cluster.endpoint
# }
output "pod_range" {
  value = data.google_compute_subnetwork.poc-burp.secondary_ip_range[0].ip_cidr_range
}
output "services_range" {
  value = data.google_compute_subnetwork.poc-burp.secondary_ip_range[1].ip_cidr_range
}
output "cloud_nat" {
  value = data.google_compute_router_nat.non-prod-cloud-nat
}
output "cloud_router" {
  value = data.google_compute_router.non-prod-cloud_router
}

