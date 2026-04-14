resource "null_resource" "main" {

  name = "${var.component}-${var.env}"

  provisioner "remote-exec" {
    connection {
      type = ssh
      host = "var.public_ip"
      user = ec2-user
      password = "DevOps321"
    }
    # Bootstrap script called with private_ip of each node in the cluster
    inline = [
      "sudo dnf install python3.13-pip.noarch -y",
      "sudo pip3.13 install ansible",
      "ansible-pull -i localhost, -U https://github.com/phanikolluri/wmp-ansible-v4.git main.yml  -e ENV=${var.env} -e COMPONENT=${var.component}",
    ]
  }
}