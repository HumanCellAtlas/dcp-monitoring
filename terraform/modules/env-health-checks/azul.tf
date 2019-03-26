data "external" "azul_health_check_id" {
  program = ["sh", "../../../../scripts/get_health_check_id"]

  query = {
    caller_reference_prefix = "azul-${var.env}"
  }
}
