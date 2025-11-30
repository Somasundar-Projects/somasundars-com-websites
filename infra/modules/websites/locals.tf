locals {
  tags = {
    Environment = var.environment
    Project     = "somasundars-com-websites"
    CreatedBy   = "terraform"
    Domain      = var.domain_name
    Owner       = "Somasundar S"
  }
}