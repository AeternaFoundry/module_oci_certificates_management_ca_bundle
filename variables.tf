variable "certificates_management_ca_bundles" {
  description = <<EOT
Map of certificates_management_ca_bundles, attributes below
Required:
    - ca_bundle_pem
    - compartment_id
    - name
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    ca_bundle_pem  = string
    compartment_id = string
    name           = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

