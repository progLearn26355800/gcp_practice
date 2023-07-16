module "network" {
  source = "../../modules/network"


  gcp_svc_key            = var.gcp_svc_key
  gcp_project            = var.gcp_project
  gcp_region             = var.gcp_region
  vpc_name               = var.vpc_name
  public_subnetwork_name = var.public_subnetwork_name
  public_cidr            = var.public_cidr
}


