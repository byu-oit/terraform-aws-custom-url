![Latest GitHub Release](https://img.shields.io/github/v/release/byu-oit/terraform-aws-hosted-zone?sort=semver)

# Terraform Module Template

This is a simple Terraform module to create a Route 53 Hosted Zone with and A and AAAA alias record.

## Usage
```hcl
module "custom_url" {
  alias_domain_name = module.cf_dist.domain_name
  alias_zone_id     = module.cf_dist.hosted_zone_id
  url               = "domain-name.byu.edu"
}
```

## Requirements
* Terraform version 0.12.16 or greater

## Inputs
| Name | Type  | Description | Default |
| --- | --- | --- | --- |
| url | string | The URL for the hosted zone. |
| alias_domain_name | string | The domain name the alias should point to. |
| alias_zone_id | string | The hosted zone ID the alias should point to. |

## Outputs
| Name | Type | Description |
| ---  | ---  | --- |
| hosted_zone | object | The [hosted zone object](https://www.terraform.io/docs/providers/aws/r/route53_zone.html#attributes-reference). |
