module "prod_vpc_2_transit_ingress_vpc" {
  source = "../terraform-hwcloud-modules/terraform-hwcloud-vpc-peering"

  requester_vpc_name = var.prod_vpc
  requester_vpc_id = module.prod-vpc.vpc_id
  requester_vpc_cidr = var.prod_vpc_cidr

  accepter_vpc_name = var.transit_ingress_vpc
  accepter_vpc_id = module.transit-vpc-ingress.vpc_id
  accepter_vpc_cidr = var.transit_ingress_vpc_cidr
}

module "prod_vpc_2_transit_egress_vpc" {
  source = "../terraform-hwcloud-modules/terraform-hwcloud-vpc-peering"

  requester_vpc_name = var.prod_vpc
  requester_vpc_id = module.prod-vpc.vpc_id
  requester_vpc_cidr = var.prod_vpc_cidr

  accepter_vpc_name = var.transit_egress_vpc
  accepter_vpc_id = module.transit-vpc-egress.vpc_id
  accepter_vpc_cidr = var.transit_egress_vpc_cidr
}