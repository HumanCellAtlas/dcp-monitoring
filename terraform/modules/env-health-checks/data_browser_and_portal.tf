data "external" "data_browser_and_portal_health_check_id" {
  program = ["sh", "../../../../scripts/get_health_check_id"]

  query = {
    caller_reference_prefix = "portal-${var.env}"
  }
}

data "external" "data_browser_and_portal_health_check_child_ids" {
  program = ["sh", "../../../../scripts/get_health_check_id", "--children"]

  query = {
    caller_reference_prefix = "portal-${var.env}"
  }
}
