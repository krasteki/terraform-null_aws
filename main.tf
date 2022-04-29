terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "null" {
  # Configuration options
}

resource "null_resource" "VM-01" {
  provisioner "local-exec" {
    command = "which aws"
  }
}
