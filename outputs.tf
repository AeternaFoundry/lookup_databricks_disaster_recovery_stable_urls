output "disaster_recovery_stable_urls_lookup_page_size" {
  description = "Map of page_size values across all disaster_recovery_stable_urls_lookup, keyed the same as var.disaster_recovery_stable_urls_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_stable_urls.disaster_recovery_stable_urls_lookup : k => v.page_size if v.page_size != null }
}
output "disaster_recovery_stable_urls_lookup_parent" {
  description = "Map of parent values across all disaster_recovery_stable_urls_lookup, keyed the same as var.disaster_recovery_stable_urls_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_stable_urls.disaster_recovery_stable_urls_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "disaster_recovery_stable_urls_lookup_stable_urls" {
  description = "Map of stable_urls values across all disaster_recovery_stable_urls_lookup, keyed the same as var.disaster_recovery_stable_urls_lookup except keys with no stable_urls are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_stable_urls.disaster_recovery_stable_urls_lookup : k => v.stable_urls if v.stable_urls != null && length(v.stable_urls) > 0 }
}

