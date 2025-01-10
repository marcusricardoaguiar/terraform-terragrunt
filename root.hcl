# Configure the remote backend
remote_state {
  backend = "local"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    path= "./terraform.tfstate"
  }
}

locals {
  project_id = "terraform-opa"
  region     = "us-central1"
}

# Configure the GCP provider
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  credentials = file("${find_in_parent_folders("terraform-opa-4e64c656583b.json")}")
  project     = "${local.project_id}"
  region      = "${local.region}"
}
EOF
}
