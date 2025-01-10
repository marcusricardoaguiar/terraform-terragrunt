include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../unitshared"
}

inputs = {
  path    = "${path_relative_to_include()}"
  content = "Hello from unit1, Terragrunt!"
}
