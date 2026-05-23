################################################################################################################################
# Terraform Setup  
################################################################################################################################

terraform {
  backend "remote" {
    hostname     = "octo.scalr.io"
    organization = "aws_environment"
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
  region = var.aws_prod_region
  assume_role {
    role_arn = "arn:aws:iam::470238156526:role/OrganizationAccountAccessRole"
  }
}
