output "logs_health_check_id" {
  value = "${aws_route53_health_check.logs.id}"
}

output "metrics_health_check_id" {
  value = "${aws_route53_health_check.metrics.id}"
}
