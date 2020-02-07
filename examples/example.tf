provider "aws" {
  version = "~> 2.42"
  region  = "us-west-2"
}

module "cf_dist" {
  source             = "github.com/byu-oit/terraform-aws-cloudfront-dist?ref=v1.0.1"
  env_tag            = "dev"
  origin_domain_name = "s3-bucket-name.us-west-2.amazonaws.com"
  origin_id          = "s3-bucket-name"
  repo_name          = "test"
}

module "hosted_zone" {
  source            = "../"
  alias_domain_name = module.cf_dist.domain_name
  alias_zone_id     = module.cf_dist.hosted_zone_id
  url               = "domain-name.byu.edu"
}
