output "analysis_health_check_id" {
  value = "${aws_route53_health_check.analysis.id}"
}

output "dcp_health_check_id" {
  value = "${aws_route53_health_check.dcp.id}"
}

output "dss_health_check_id" {
  value = "${aws_route53_health_check.dss.id}"
}

output "ingest_health_check_id" {
  value = "${aws_route53_health_check.ingest.id}"
}

output "upload_health_check_id" {
  value = "${aws_route53_health_check.upload.id}"
}

output "matrix_health_check_id" {
  value = "${aws_route53_health_check.matrix.id}"
}

output "azul_health_check_id" {
  value = "${lookup(data.external.azul_health_check_id.result, "health_check_id")}"
}

output "data_browser_and_portal_health_check_id" {
  value = "${lookup(data.external.data_browser_and_portal_health_check_id.result, "health_check_id")}"
}
