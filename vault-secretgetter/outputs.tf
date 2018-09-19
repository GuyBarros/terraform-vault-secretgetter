output "mysecret" {
 value = "${data.vault_generic_secret.secret.data["value"]}"
}