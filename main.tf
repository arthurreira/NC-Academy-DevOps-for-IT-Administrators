terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  filename = "hellos.txt"
  content  = "Terraform is working!"
}