terraform {
  required_version = ">= 0.12.16"
  required_providers {
    aws = ">= 2.42"
  }
}

locals {
  tags = {
    env              = var.env_tag
    data-sensitivity = var.data_sensitivity_tag
    repo             = "https://github.com/byu-oit/${var.repo_name}"
  }
}

resource "aws_route53_zone" "main" {
  name = var.url

  tags = local.tags
}

resource "aws_route53_record" "custom-url-a" {
  name    = var.url
  type    = "A"
  zone_id = aws_route53_zone.main.zone_id

  alias {
    evaluate_target_health = false
    name                   = var.alias_domain_name
    zone_id                = var.alias_zone_id
  }
}

resource "aws_route53_record" "custom-url-4a" {
  name    = var.url
  type    = "AAAA"
  zone_id = aws_route53_zone.main.zone_id

  alias {
    evaluate_target_health = false
    name                   = var.alias_domain_name
    zone_id                = var.alias_zone_id
  }
}
