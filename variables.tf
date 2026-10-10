variable "cloudwatch_log_metric_filters" {
  description = <<EOT
Map of cloudwatch_log_metric_filters, attributes below
Required:
    - log_group_name
    - name
    - pattern
    - metric_transformation (block):
        - default_value (optional)
        - dimensions (optional)
        - name (required)
        - namespace (required)
        - unit (optional)
        - value (required)
Optional:
    - apply_on_transformed_logs
    - region
EOT

  type = map(object({
    log_group_name            = string
    name                      = string
    pattern                   = string
    apply_on_transformed_logs = optional(bool)
    region                    = optional(string)
    metric_transformation = object({
      default_value = optional(string)
      dimensions    = optional(map(string))
      name          = string
      namespace     = string
      unit          = optional(string)
      value         = string
    })
  }))
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

