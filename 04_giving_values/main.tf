terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
  }
}

resource "local_file" "example1" {
  content  = "this is demo content!"
  filename = "${path.module}/${var.filename}.txt"
}