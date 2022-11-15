

data "aws_ami" "ubuntu" {
  most_recent = true

 # owners = []
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic*"]
  }

  #filter {
  #    name = "zone"
  #    values = ["us-east-1"]
  #}
}

resource "aws_instance" "my_instance" {
  ami = data.aws_ami.ubuntu.id

  #A variabiliser
  instance_type = "t2.micro"
  key_name = "devops-dany"

  availability_zone = var.availability_zone
  security_groups   = ["${var.security_group_name}"]

 

  provisioner "local-exec" {

    command = "echo ${var.my_public_ip} >> ips.txt"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx ",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      host        = self.public_ip
      private_key = file("../../devops-dany.pem")
      user        = "ubuntu"
    }
  }
}
