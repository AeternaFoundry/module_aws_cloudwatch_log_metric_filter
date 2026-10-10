output "cloudwatch_log_metric_filters_id" {
  description = "Map of id values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_metric_filters_apply_on_transformed_logs" {
  description = "Map of apply_on_transformed_logs values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.apply_on_transformed_logs if v.apply_on_transformed_logs != null }
}
output "cloudwatch_log_metric_filters_log_group_name" {
  description = "Map of log_group_name values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.log_group_name if v.log_group_name != null && length(v.log_group_name) > 0 }
}
output "cloudwatch_log_metric_filters_metric_transformation" {
  description = "Map of metric_transformation values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => one(v.metric_transformation) if v.metric_transformation != null && length(v.metric_transformation) > 0 }
}
output "cloudwatch_log_metric_filters_name" {
  description = "Map of name values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_log_metric_filters_pattern" {
  description = "Map of pattern values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "cloudwatch_log_metric_filters_region" {
  description = "Map of region values across all cloudwatch_log_metric_filters, keyed the same as var.cloudwatch_log_metric_filters"
  value       = { for k, v in aws_cloudwatch_log_metric_filter.cloudwatch_log_metric_filters : k => v.region if v.region != null && length(v.region) > 0 }
}

