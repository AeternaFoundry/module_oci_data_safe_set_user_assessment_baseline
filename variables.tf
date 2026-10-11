variable "data_safe_set_user_assessment_baselines" {
  description = <<EOT
Map of data_safe_set_user_assessment_baselines, attributes below
Required:
    - user_assessment_id
Optional:
    - assessment_ids
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    user_assessment_id = string
    assessment_ids     = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

