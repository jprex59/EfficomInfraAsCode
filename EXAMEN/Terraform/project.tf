provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project" "terra-effi-proj" {
  name            = "<NAME>"
  project_id      = var.project_id
  billing_account = "<Billing account>"
}
