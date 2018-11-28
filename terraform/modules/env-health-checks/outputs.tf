output "analysis_health_check_id" {
  value = "${aws_route53_health_check.analysis.id}"
}

output "azul_indexer_health_check_id" {
  value = "${aws_route53_health_check.azul_indexer.id}"
}

output "azul_webservice_health_check_id" {
  value = "${aws_route53_health_check.azul_webservice.id}"
}

output "data_browser_health_check_id" {
  value = "${aws_route53_health_check.data_browser.id}"
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
