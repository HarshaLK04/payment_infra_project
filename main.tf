module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr = var.vpc_cidr
}

module "ecr" {
  source = "./modules/ecr"
  
  repository_name = "payment-app"
}

module "eks" {
  source = "./modules/eks"
  
  cluster_name = var.cluster_name
  subnet_ids   = module.vpc.private_subnets
  vpc_id       = module.vpc.vpc_id
}

resource "aws_instance" "myec2" {
	ami           = "ami-019715e0d74f695be"
	instance_type = "t3.micro"
}
