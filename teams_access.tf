locals {
  workspace_ids_list = values(nonsensitive(data.tfe_outputs.samuellee-dev-workspace-outputs.values))
  team_ids           = [for team in tfe_team : team.id]
}

resource "tfe_team_access" "devs-access-all-workspaces" {
  for_each     = toset(local.workspace_ids_list)
  workspace_id = each.key
  team_id      = tfe_team.developers.id
  access       = "read"
}

output "test" {
  value = local.team_ids
}
