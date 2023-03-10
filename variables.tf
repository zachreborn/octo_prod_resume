variable "access_id" {
  type        = string
  description = "AWS access id"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "AWS secret key"
  sensitive   = true
}

variable "aws_prod_region" {
  type        = string
  description = "AWS Prod Region"
  default     = "us-east-1"
}
