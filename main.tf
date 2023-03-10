################################################################################################################################
# Terraform Setup  
################################################################################################################################

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "thinkstack-co"

    workspaces {
      name = "octo_prod_resume"
    }
  }
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
}

################################################################################################################################
# AWS Setup
################################################################################################################################

provider "aws" {
  access_key = var.access_id
  secret_key = var.secret_key
  region     = var.aws_prod_region
}
