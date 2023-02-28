resource "tfe_team_access" "hcp-vault-deployment" {
  access       = "read"
  team_id      = tfe_team.developers.id
  workspace_id = data.tfe_outputs.samuellee-dev-workspace-outputs.values.hcp_waypoint_deployment_id
}
