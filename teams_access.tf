# resource "tfe_team_access" "hcp-deployment" {
#   for_each = {
#     for index, workspace in data.tfe_outputs.samuellee-dev-workspace-outputs.values :
#     workspace_id => workspace
#   }
#   team_id = tfe_team.developers.id
# }


locals {
  workspaceIds = [data.tfe_outputs.samuellee-dev-workspace-outputs.values]
}

output "test" {
  value = [
    for test in local.workspaceIds : length(test)
  ]
  sensitive = false
}
