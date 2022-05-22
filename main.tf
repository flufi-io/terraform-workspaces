locals {
  workspaces = fileset("${path.module}/workspaces/", "**.enc.yml")
}
module "workspaces" {
  source         = "flufi-io/workspace/tfc"
  version        = "0.0.3"
  for_each       = local.workspaces
  variables_file = "${path.module}/workspaces/${each.key}"

}
