output "data_safe_set_user_assessment_baselines_id" {
  description = "Map of id values across all data_safe_set_user_assessment_baselines, keyed the same as var.data_safe_set_user_assessment_baselines except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_set_user_assessment_baseline.data_safe_set_user_assessment_baselines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_set_user_assessment_baselines_assessment_ids" {
  description = "Map of assessment_ids values across all data_safe_set_user_assessment_baselines, keyed the same as var.data_safe_set_user_assessment_baselines except keys with no assessment_ids are omitted"
  value       = { for k, v in oci_data_safe_set_user_assessment_baseline.data_safe_set_user_assessment_baselines : k => v.assessment_ids if v.assessment_ids != null && length(v.assessment_ids) > 0 }
}
output "data_safe_set_user_assessment_baselines_user_assessment_id" {
  description = "Map of user_assessment_id values across all data_safe_set_user_assessment_baselines, keyed the same as var.data_safe_set_user_assessment_baselines except keys with no user_assessment_id are omitted"
  value       = { for k, v in oci_data_safe_set_user_assessment_baseline.data_safe_set_user_assessment_baselines : k => v.user_assessment_id if v.user_assessment_id != null && length(v.user_assessment_id) > 0 }
}

