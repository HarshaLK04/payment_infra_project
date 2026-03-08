terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 5.0"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "myec2" {
	ami           = "ami-0b6c6ebed2801a5cb"
	instance_type = "t3.micro"
}
