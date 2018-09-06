// DCP overall system health
resource "aws_route53_health_check" "dcp" {
  type                   = "CALCULATED"
  child_health_threshold = 4

  child_healthchecks = [
    "${aws_route53_health_check.dss.id}",
    "${aws_route53_health_check.ingest.id}",
    "${aws_route53_health_check.upload.id}",
    "${aws_route53_health_check.analysis.id}",
  ]

  tags = {
    Name = "dcp-health-check-${var.env}"
  }
}