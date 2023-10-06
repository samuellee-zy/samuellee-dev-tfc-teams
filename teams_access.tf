locals {
  workspace_ids_list = values(nonsensitive(data.tfe_outputs.samuellee-dev-workspace-outputs.values))
}

resource "tfe_team_access" "devs-access-all-workspaces" {
  for_each     = toset(local.workspace_ids_list)
  workspace_id = each.key
  team_id      = tfe_team.developers.id
  access       = "read"
}

resource "tfe_team_project_access" "serviceNow" {
  access = "admin"
  team_id = tfe_team.serviceNow
  project_id = data.tfe_outputs.samuellee-dev-projects-outputs.project_serviceNow
}