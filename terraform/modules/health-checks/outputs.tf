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

output "logs_health_check_id" {
  value = "${element(concat(aws_route53_health_check.logs.*.id, list("None")), 0)}"
}

output "upload_health_check_id" {
  value = "${aws_route53_health_check.upload.id}"
}
