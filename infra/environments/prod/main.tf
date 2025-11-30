module "websites" {
  source = "../../modules/websites"

  environment            = "prod"
  aws_region             = "ap-south-1"
  certificate_aws_region = "us-east-1"
  domain_name            = "somasundars.com"
}