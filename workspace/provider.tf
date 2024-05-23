terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
   backend "s3" {
    bucket = "srikantheswar-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "srikantheswar-locking"
  }
}

provider "aws" {
  region ="us-east-1"
}