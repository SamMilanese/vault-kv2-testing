provider "vault" {

address = "https://vault-myappXXX.net"
skip_tls_verify = true
token = "95XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

data "vault_kv_secret_v2" "my-secret" {
  mount = "kv"
  name = "hello"
}

output secret {
value = "${data.vault_kv_secret_v2.my-secret.data["foo"]}"
}
