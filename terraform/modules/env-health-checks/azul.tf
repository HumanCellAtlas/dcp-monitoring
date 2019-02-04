data "external" "azul_health_check_id" {
                program = [
                    "python",
                    "../../../scripts/azul_health_check_id"
                ],
                query = {
                    health_check = "${var.env}"
                }
}
