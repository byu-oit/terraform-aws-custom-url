provider "aws" {
  version = "~> 2.42"
  region  = "us-west-2"
}

module "hosted_zone" {
  source            = "../"
  alias_domain_name = "cloudfront-loadbalancer.amazonaws.com"
  alias_zone_id     = "Z00000000000"
  url               = "domain-name.byu.edu"
}
