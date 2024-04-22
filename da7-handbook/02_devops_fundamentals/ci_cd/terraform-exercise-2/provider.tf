terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    #TODO Add configs
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-central-1"
  profile = #TODO change to the correct profile name
}
