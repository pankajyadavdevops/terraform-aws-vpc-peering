provider "aws" {
  region = "us-east-2"
}

module "vpc-peering" {
  source           = "./../.."
  name             = "vpc-peering"
  environment      = "prod"
  label_order      = ["environment", "name"]
  requestor_vpc_id = "vpc-04081564xxxxxxxxx"
  acceptor_vpc_id  = "vpc-07fca4b6xxxxxxxxx"
  accept_region    = "us-east-1"
  auto_accept      = false
}

