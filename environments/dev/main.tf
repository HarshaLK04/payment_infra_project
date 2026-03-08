module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = var.cluster_name
  subnet_ids   = module.vpc.private_subnets
  vpc_id       = module.vpc.vpc_id
}

module "ecr" {
  source = "../../modules/ecr"

  repository_name = "payment-app"
}

module "rds" {
  source = "../../modules/rds"

  db_name     = "paymentdb"
  db_username = "admin"
  db_password = "password123"
  subnet_ids  = module.vpc.private_subnets
}