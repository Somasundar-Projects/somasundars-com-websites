terraform {
  backend "s3" {
    bucket       = "terraform-state-bucket-somasundar-dev"
    key          = "infra/websites/prod/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}