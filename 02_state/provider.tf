terraform {
    backend "local" {
      path = "C://Users//Goldman//Documents//Terraform-course-2026//02_state//state-file//terraform.tfstate"
    }
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
  }
}

