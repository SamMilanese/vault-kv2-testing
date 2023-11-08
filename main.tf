provider "vault" {
 skip_tls_verify = true
}

data "vault_kv_secret_v2" "my-secret" {
  mount = "kv"
  name = "hello"
}

output secret {
sensitive = true
value = "${data.vault_kv_secret_v2.my-secret.data["foo"]}"
}
