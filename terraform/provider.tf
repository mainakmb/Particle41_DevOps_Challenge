# Provider configuration
terraform {
  backend "s3" {
    bucket         = "mainakbiswas"
    key            = "tf-global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate-locking-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
