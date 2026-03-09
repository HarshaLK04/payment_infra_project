variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EKS cluster"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for EKS cluster"
}
