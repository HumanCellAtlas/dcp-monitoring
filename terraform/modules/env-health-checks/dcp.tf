// DCP overall system health
locals {
  native_ids = [
    "${aws_route53_health_check.dss.id}",
    "${aws_route53_health_check.ingest.id}",
    "${aws_route53_health_check.upload.id}",
    "${aws_route53_health_check.analysis.id}",
  ]

  child_health_check_ids = ["${concat(
    local.native_ids,
    values(data.external.azul_health_check_child_ids.result),
    values(data.external.data_browser_and_portal_health_check_child_ids.result)
  )}"]
}

resource "aws_route53_health_check" "dcp" {
  type                   = "CALCULATED"
  child_health_threshold = "${length(local.child_health_check_ids)}"

  child_healthchecks = ["${local.child_health_check_ids}"]

  tags = {
    Name = "dcp-health-check-${var.env}"
  }

  depends_on = [
    "data.external.azul_health_check_id",
    "data.external.data_browser_and_portal_health_check_id",
  ]
}
