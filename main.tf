provider "vault" {
 version ~= 1.1.3
}
module "vault-secretgetter"{
    source = "./vault-secretgetter"
    token = "${var.token}"
secretpath = "${var.secretpath}" 
vaulthost = "${var.vaulthost}"
  version = "v.0.0.2"
}


output "mysecret" {
 value = "${module.vault-secretgetter.mysecret}"
}
