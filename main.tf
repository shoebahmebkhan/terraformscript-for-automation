module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnet_ids
  sg_id         = module.security_group.sg_id
  instance_type = var.instance_type
  key_name      = var.key_name
  ami           = data.aws_ssm_parameter.latest_al2023.value
}

module "alb" {
  source       = "./modules/alb"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
  sg_id        = module.security_group.sg_id
  instance_ids = module.ec2.instance_ids
}

