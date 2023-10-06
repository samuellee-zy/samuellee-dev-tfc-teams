data "tfe_outputs" "samuellee-dev-workspace-outputs" {
  organization = var.orgName
  workspace    = var.samuelleeDevWorkspaces

}

data "tfe_outputs" "samuellee-dev-projects-outputs" {
  organization = var.orgName
  workspace = var.samuelleeDevProjects
}


