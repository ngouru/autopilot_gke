resource "google_service_account" "gke-sa" {
  account_id   = "${local.environment}-gke-sa"
  display_name = "${local.environment} GKE Service Account"
  project = data.google_project.project_id.project_id
}