# egress vpc
output "egress_vpc_id" { value = module.transit-vpc-egress.vpc_id}
output "egress_subnet_id" { value = module.transit-vpc-egress.egress_subnet_id }
output "egress_natgw_id" { value = module.transit-vpc-egress.egress_nat_gw_id }

# ingress vpc
output "ingress_vpc_id" { value = module.transit-vpc-ingress.vpc_id}
output "ingress_subnet_id" { value = module.transit-vpc-ingress.ingress_subnet_id }

# production vpc
output "prod_vpc_id" { value = module.prod-vpc.vpc_id}
output "prod_subnet_id" { value = module.prod-vpc.private_subnet_id }
output "prod_requester_vpc_peering_id" { value = module.prod_vpc_2_transit_ingress_vpc.requester_vpc_peering_id}