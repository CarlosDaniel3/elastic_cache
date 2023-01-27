locals {
  subnet_ids = { for k, v in aws_subnet.sub : v.tags.Name => v.id }

  instance_type_map = {
    staging    = var.instance_type == "" ? "t3.micro" : var.instance_type
    production = var.instance_type == "" ? "t3.medium" : var.instance_type
  }
  instance_type = lookup(local.instance_type_map, var.env)
}