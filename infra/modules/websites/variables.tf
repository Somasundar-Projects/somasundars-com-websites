variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "certificate_aws_region" {
  description = "The AWS region where the SSL certificates are stored"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "The domain name for the websites"
  type        = string
}