module "vault-secretgetter"{
 source = "./modules"
 token = "${var.token}"
 secretpath = "${var.secretpath}" 
 vaulthost = "${var.vaulthost}"
}
