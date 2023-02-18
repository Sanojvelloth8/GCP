# best of luck
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

#Provider profile and region in which all the resources will create
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

