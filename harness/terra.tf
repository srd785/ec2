module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.7"

  account_id = "LZyeo82AR5KUT0J6P2mtZg"
  delegate_token = "MzQ4NDUyYjc3MzlhM2Q5ODUwOGFlZDkyMGQxOTBiM2I="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "harness-delegate-ng3"
  manager_endpoint = "https://app.harness.io/gratis"
  delegate_image = "harness/delegate:23.06.79707"
  replicas = 1
  upgrader_enabled = false
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}



