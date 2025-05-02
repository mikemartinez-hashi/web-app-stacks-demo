required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 4.0"
  }
  hcp = {
    source  = "hashicorp/hcp"
    version = "~> 0.105.0"
  }
  vault = {
    source  = "hashicorp/vault"
    version = "~> 4.8.0"
  }
}

provider "aws" "configurations" {
  for_each = var.regions

  config {
    region = each.value

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.identity_token
    }

    default_tags {
      tags = var.default_tags
    }
  }
}
