terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
  backend  "s3" {
  bucket = "ourvpcbucket"
  key = "vpc-demo"
  region = "us-east-1"
  dynamodb_table = "vpc-locking"
}
}




provider "aws" {
  # Configuration options
  region = "us-east-1"
}