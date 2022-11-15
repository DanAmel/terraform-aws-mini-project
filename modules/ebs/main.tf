resource "aws_ebs_volume" "my_volume" {
  availability_zone = var.availability_zone
  size              = var.ebs_size
}