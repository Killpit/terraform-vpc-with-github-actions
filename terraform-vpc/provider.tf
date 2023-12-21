terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "terraform-vpc-with-github-actions"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
  }

}

provider "aws" {
  region = "eu-north-1"
}