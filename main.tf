resource "aws_cloudwatch_log_metric_filter" "cloudwatch_log_metric_filters" {
  for_each = var.cloudwatch_log_metric_filters

  log_group_name            = each.value.log_group_name
  name                      = each.value.name
  pattern                   = each.value.pattern
  apply_on_transformed_logs = each.value.apply_on_transformed_logs
  region                    = each.value.region

  metric_transformation {
    default_value = each.value.metric_transformation.default_value
    dimensions    = each.value.metric_transformation.dimensions
    name          = each.value.metric_transformation.name
    namespace     = each.value.metric_transformation.namespace
    unit          = each.value.metric_transformation.unit
    value         = each.value.metric_transformation.value
  }
}

