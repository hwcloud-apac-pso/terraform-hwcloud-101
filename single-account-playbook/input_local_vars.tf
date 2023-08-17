variable "transit_egress_vpc" { default = "vpc-egress" }
variable "transit_egress_vpc_cidr" { default = "10.20.0.0/16" }
variable "transit_egress_subnet_name" { default= "vpc-egress-sub" }
variable "transit_egress_subnet_cidr" { default= "10.20.0.0/24" }
variable "transit_egress_nat_gw_name" { default=  "nat-prod" }
variable "transit_egress_nat_eip_name" { default=  "nat-prod-eip" }

variable "transit_ingress_vpc" { default = "vpc-ingress" }
variable "transit_ingress_vpc_cidr" { default = "10.16.0.0/16" }
variable "transit_ingress_subnet_name" { default = "vpc-ingress-sub" }
variable "transit_ingress_subnet_cidr" { default = "10.16.0.0/24" }
variable "transit_ingress_elb_name" { default = "elb-prod" }
variable "transit_ingress_elb_az" { default = [ "ap-southeast-3a","ap-southeast-3b"] }

variable "prod_vpc" { default = "vpc-prod" }
variable "prod_vpc_cidr" { default = "10.100.0.0/16" }
variable "prod_private_subnet_name" { default = "vpc-prod-sub" }
variable "prod_private_subnet_cidr" { default = "10.100.0.0/24" }