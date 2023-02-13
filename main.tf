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
}

################################################################################################################################
# AWS Setup
################################################################################################################################

provider "aws" {
  access_key = var.access_id
  secret_key = var.secret_key
  region     = var.aws_prod_region
}