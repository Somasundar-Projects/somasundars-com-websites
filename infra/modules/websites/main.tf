provider "aws" {
  region = var.aws_region
}

provider "aws" {
  alias  = "cert_region"
  region = var.certificate_aws_region
}