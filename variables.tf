variable "disaster_recovery_stable_urls_lookup" {
  description = <<EOT
Map of disaster_recovery_stable_urls_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
  }))
}

