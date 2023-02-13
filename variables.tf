variable "access_id" {
  description = "AWS access id"
  sensitive = true
}

variable "secret_key" {
  description = "AWS secret key"
  sensitive = true
}

variable "aws_prod_region" {
  type        = string
  description = "AWS Prod Region"
  default     = "us-east-1"
}
