terraform {
    backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "4.3.0"
    }
  }
}

provider "vault" {
  skip_child_token = true
}

module "my_module_name" {
  source  = "gitlab.com/dependabot-gitlab/gitlab-file/local"
  version = "0.0.3"
}

output "filesize_in_bytes" {
  value = module.my_module_name.bytes
}
