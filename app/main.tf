
module "instance_ec2" {
  source = "../modules/ec2"

  my_public_ip        = module.eip.my_public_ip
  availability_zone   = var.availability_zone
  security_group_name = module.sec_group.security_group_name
  my_instance_type    = var.my_instance_type
  my_key_name         = var.key_name

}

module "eip" {
  source = "../modules/eip"
}

module "sec_group" {
  source = "../modules/security_group"

  sec_group_name = "default_sec_group_name_test"
}

module "volume" {
  source            = "../modules/ebs"
  ebs_size          = var.ebs_size
  availability_zone = var.availability_zone
}


resource "aws_volume_attachment" "name" {
  device_name = "/dev/sdh"
  volume_id   = module.volume.my_volume_id
  instance_id = module.instance_ec2.my_ec2_id
}

resource "aws_eip_association" "association_ip" {
  instance_id   = module.instance_ec2.my_ec2_id
  allocation_id = module.eip.my_aws_eip
}