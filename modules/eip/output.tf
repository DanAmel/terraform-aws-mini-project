output "my_aws_eip" {
  value = aws_eip.my_ip.id
}

output "my_public_ip" {
  value = aws_eip.my_ip.public_ip
}