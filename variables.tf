variable "env_tag" {
  type        = string
  description = "The environment tag for the resources."
}

variable "data_sensitivity_tag" {
  type        = string
  default     = "confidential"
  description = "The data-sensitivity tag for the resources."
}

variable "repo_name" {
  type        = string
  description = "The name of the repo containing the site."
}

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
