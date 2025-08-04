provider "aws" {
  region = "us-east-2"
}

locals {
  name        = "peering"
  environment = "test"
}

module "vpc-peering" {
  source = "./../../"

  name             = local.name
  environment      = local.environment
  requestor_vpc_id = "vpc-0a1dfb3xxxxxxxx"
  acceptor_vpc_id  = "vpc-05d91dcxxxxxxxx"
}