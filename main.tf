module "vault-secretgetter"{
    source = "./vault-secretgetter"
    token = "${var.token}"
secretpath = "${var.secretpath}" 
vaulthost = "${var.vaulthost}"
}


resource "null_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
       provisioner "local-exec" {
 # command = "echo ${data.terraform_remote_state.emea_se_playground_vault_secret_getter.mysecret}",
  command = "echo hi mom",
  
           
           }

}



output "mysecret" {
 value = "${module.vault-secretgetter.mysecret}"
}
