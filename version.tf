terraform {
  required_providers {
    aws = {
        source = "harshicorp/aws"
        version = "5.5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}