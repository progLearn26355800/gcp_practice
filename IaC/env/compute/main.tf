module "compute" {
  source = "../../modules/compute"

  gcp_svc_key            = var.gcp_svc_key
  gcp_project            = var.gcp_project
  gcp_region             = var.gcp_region
  zone                   = var.zone
  public_subnetwork_name = data.terraform_remote_state.network.outputs.output_public_subnetwork_name
}


data "terraform_remote_state" "network" {
  backend = "gcs"
  config = {
    bucket      = "tf-state-test-terraform"
    prefix      = "terraform/state/network"
    credentials = "../../clean-feat-392921-a920f1e32f8e.json"
  }
}
