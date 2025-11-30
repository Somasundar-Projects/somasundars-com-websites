resource "aws_route53_zone" "somasundars_com" {
  name = var.domain_name

  tags = local.tags

}

resource "aws_route53_record" "somasundars_com_validation" {
  depends_on = [aws_acm_certificate.somasundars_com, aws_route53_zone.somasundars_com]

  for_each = {
    for dvo in aws_acm_certificate.somasundars_com.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      type   = dvo.resource_record_type
      record = dvo.resource_record_value
    }
  }

  zone_id = aws_route53_zone.somasundars_com.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = 60
  records = [each.value.record]

}