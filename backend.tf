terraform {
  backend "s3" {
    bucket = "payment-terraform-state-hd111"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}