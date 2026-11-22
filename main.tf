terraform {
  required_version = ">= 1.5.0"
}

resource "terraform_data" "gitops_demo" {
  input = {
    project = "Project 18"
    owner   = "Dharma Raju"
    purpose = "GitOps Infrastructure Deployment"
  }
}

output "project_details" {
  value = terraform_data.gitops_demo.output
}
