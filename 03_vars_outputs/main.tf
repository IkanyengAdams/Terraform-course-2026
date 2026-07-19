terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
  }
}

# resource "local_file" "example1" {
#   content  = "foo!"
#   filename = "${path.module}/${var.filename-1}.txt"
#   count = var.count_num
# }

# locals {
#   base_path = "${path.module}/files"
# }

# resource "local_file" "example2" {
#   content  = "foo!"
#   filename = "${local.base_path}/example2.md"
# }

# resource "local_file" "example3" {
#   content  = "foo!"
#   filename = "${local.base_path}/example3.md"
# }

# resource "local_file" "example4" {
#   content  = "foo!"
#   filename = "${local.base_path}/example4.md"
# }


locals {
  environment = "prod" # dev, staging, prod
  upper_case  = upper(local.environment)
  base_path   = "${path.module}/configs/${local.upper_case}"
}

resource "local_file" "service_configs" {
  filename = "${local.base_path}/server.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}

resource "local_file" "service_configs2" {
  filename = "${local.base_path}/server2.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}

resource "local_file" "service_configs3" {
  filename = "${local.base_path}/server3.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}

# outputs

output "filename_1" {
  value = local_file.service_configs.filename
  sensitive = true
}
