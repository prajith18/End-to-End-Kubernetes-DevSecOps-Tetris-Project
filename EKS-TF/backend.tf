terraform {
  backend "s3" {
    bucket         = "prajith-terraform"
    region         = "ap-south-1"
    key            = "global/s4/terraform.tfstate"
    dynamodb_table = "prajith-terraform"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
