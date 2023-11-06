provider "vault" {
}

data "vault_kv_secret_v2" "my-secret" {
  mount = "kv"
  name = "hello"
}

output secret {
value = "${data.vault_kv_secret_v2.my-secret.data["foo"]}"
}
