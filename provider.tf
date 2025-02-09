provider "aws" {
  region  = "us-east-1"
  profile = "Academy"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}