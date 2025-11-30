resource "aws_acm_certificate" "somasundars_com" {
  provider          = aws.cert_region
  domain_name       = var.domain_name
  validation_method = "DNS"

  tags = local.tags
}

resource "aws_acm_certificate_validation" "somasundars_com_validation" {
  provider                = aws.cert_region
  certificate_arn         = aws_acm_certificate.somasundars_com.arn
  validation_record_fqdns = [for record in aws_route53_record.somasundars_com_validation : record.fqdn]
}