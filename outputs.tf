output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "security_group_id" {
  value = module.security_group.sg_id
}

output "swarm_instance_ids" {
  value = module.ec2.instance_ids
}

output "manager_public_ip" {
  value = module.ec2.public_ips[0]
}

output "alb_dns_name" {
  value = module.alb.dns_name
}
