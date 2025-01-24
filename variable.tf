variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
variable "machine_type" {
  type = string
  default = "e2-medium"
}
variable "pods_ip_range" {
  type = string
  default = "100.96.160.0/20"
} 
variable "services_ip_range" {
  type = string
  default = "100.96.145.0/24"
} 
variable "subnet_ip_range" {
  description = "Subnet IP range"
  type = string
  default = "10.177.140.0/22"
}
# # variable "gcp_project" {
# #     type = string
# # }

# # variable "gcp_region" {
# #      type = string
# # }

# variable "business_division" {
#     type = string
# }

# variable "environment" {
#     type = string
# }