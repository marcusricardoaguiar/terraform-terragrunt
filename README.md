# terraform-terragrunt
Terraform code using terragrunt

# commands:

 - https://terragrunt.gruntwork.io/docs/getting-started/install/
 - choco install terragrunt
 - terragrunt --version
 - https://terragrunt.gruntwork.io/docs/getting-started/quick-start/
 - terragrunt apply
 - terragrunt run-all plan
 - terragrunt run-all apply -auto-approve
 - terragrunt run-all --terragrunt-non-interactive apply -auto-approve
 - find .terragrunt-cache -name backend.tf -exec cat {} \;
 - tree .terragrunt-cache/ -L 3
