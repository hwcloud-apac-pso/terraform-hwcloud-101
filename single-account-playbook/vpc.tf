module "transit-vpc-egress" {
  source = "../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.transit_egress_vpc}"
  vpc_cidr = var.transit_egress_vpc_cidr
  egress_subnet_name = var.transit_egress_subnet_name
  egress_subnet_cidr = var.transit_egress_subnet_cidr
  egress_nat_gw_name = var.transit_egress_nat_gw_name
  nat_eip_name = var.transit_egress_nat_eip_name
}

module "transit-vpc-ingress" {
  source = "../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.transit_ingress_vpc}"
  vpc_cidr = var.transit_ingress_vpc_cidr
  ingress_subnet_name = var.transit_ingress_subnet_name
  ingress_subnet_cidr = var.transit_ingress_subnet_cidr
  ingress_elb_name = var.transit_ingress_elb_name
  elb_az = var.transit_ingress_elb_az
}

module "prod-vpc" {
  source = "../terraform-hwcloud-modules/terraform-hwcloud-vpc"
  
  name = "${var.prod_vpc}"
  vpc_cidr = var.prod_vpc_cidr
  private_subnet_name = var.prod_private_subnet_name
  private_subnet_cidr = var.prod_private_subnet_cidr
}