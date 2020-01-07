variable "url" {
  type        = string
  description = "The URL for the hosted zone."
}

variable "alias_domain_name" {
  type        = string
  description = "The domain name the alias should point to."
}

variable "alias_zone_id" {
  type        = string
  description = "The hosted zone ID the alias should point to."
}
