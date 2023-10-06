resource "tfe_team" "admins" {
  name         = "admins"
  organization = var.orgName
  organization_access {
    manage_modules          = true
    manage_policies         = true
    manage_policy_overrides = true
    manage_projects         = true
    manage_providers        = true
    manage_run_tasks        = true
    manage_vcs_settings     = true
    manage_workspaces       = true
  }
}

resource "tfe_team" "developers" {
  name         = "developers"
  organization = var.orgName
}

resource "tfe_team" "serviceNow" {
  name         = "ServiceNow"
  organization = var.orgName
  organization_access {
    manage_workspaces = true
  }
}
