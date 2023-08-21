terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
  backend "s3" {
    bucket         = "hassan-learning-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "hassan-learning-tf-db"

  }
  required_version = ">= 1.5.4"
}