data "databricks_disaster_recovery_stable_urls" "disaster_recovery_stable_urls_lookup" {
  for_each = var.disaster_recovery_stable_urls_lookup

  parent    = each.value.parent
  page_size = each.value.page_size
}

