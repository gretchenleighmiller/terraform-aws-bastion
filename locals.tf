locals {
  snake_case_name = join("_", regexall("[[:alnum:]]+", lower(var.name)))
  instance_tags   = merge(var.base_tags, var.instance_tags, { "Name" = var.name })
  sg_tags         = merge(var.base_tags, var.sg_tags, { "Name" = var.name })
}
