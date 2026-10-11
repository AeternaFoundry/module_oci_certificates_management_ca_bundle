resource "oci_certificates_management_ca_bundle" "certificates_management_ca_bundles" {
  for_each = var.certificates_management_ca_bundles

  ca_bundle_pem  = each.value.ca_bundle_pem
  compartment_id = each.value.compartment_id
  name           = each.value.name
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

