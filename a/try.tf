provider "vault" {
  address = "https://1a2c97adbe64.ngrok.io"
  token = "s.EFQB11ZuW2f0F1Optc4xvDvH"
}


data "vault_generic_secret" "mq-userpass" {
  #path = "kv/qak8s/vrp-pipelines/vrp-pipelines"
  path = "kv/qak8s/namespaces/vrp-pipelines/vrp-pipelines"
}



locals {
  username=data.vault_generic_secret.mq-userpass.data.username
  password=data.vault_generic_secret.mq-userpass.data.password
}
output "a"{
  value = local.password
}
