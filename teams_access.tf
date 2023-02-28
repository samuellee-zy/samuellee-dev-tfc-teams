locals {
  workspace_ids_list = values(nonsensitive(data.tfe_outputs.samuellee-dev-workspace-outputs.values))
}

# output "test" {
#   value = local.workspace_ids_list
# }

resource "tfe_team_access" "hcp-deployment" {
  for_each     = toset(local.workspace_ids_list)
  workspace_id = each.key
  team_id      = tfe_team.developers.id
  access       = "read"
}
