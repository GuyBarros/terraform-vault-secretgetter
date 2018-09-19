module "vault-secretgetter"{
    source = "./vault-secretgetter"
    token = "${var.token}"
secretpath = "${var.secretpath}" 
vaulthost = "${var.vaulthost}"
}


resource "null_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
       provisioner "local-exec" {
    command = "echo ${module.vault-secretgetter.mysecret}",
  }

}



output "test-sebastien" {
 value = "${module.vault-secretgetter.mysecret}"
}