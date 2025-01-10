include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../unitshared"
}

dependency "unit1" {
  config_path = "../unit1"
  mock_outputs = {
   content = "Mocked content from foo"
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

inputs = {
  path    = "${path_relative_to_include()}"
  content = "Hello from unit2, Terragrunt! Unit1 content: ${dependency.unit1.outputs.content}"
}
