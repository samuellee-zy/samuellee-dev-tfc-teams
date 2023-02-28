locals {
  workspaceIds = [nonsensitive(data.tfe_outputs.samuellee-dev-workspace-outputs.values)]
}

output "test" {
  value = nonsensitive(local.workspaceIds)
}

# resource "tfe_team_access" "hcp-deployment" {
#   for_each     = toset(local.workspaceIds)
#   workspace_id = each.key
#   team_id      = tfe_team.developers.id
#   access       = "read"
# }
