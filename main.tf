resource "oci_data_safe_set_user_assessment_baseline" "data_safe_set_user_assessment_baselines" {
  for_each = var.data_safe_set_user_assessment_baselines

  user_assessment_id = each.value.user_assessment_id
  assessment_ids     = each.value.assessment_ids

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

