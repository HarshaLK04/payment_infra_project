variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "payment-eks"
}

variable "environment" {
  default = "dev"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}