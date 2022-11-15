variable "availability_zone" {
  type        = string
  description = "availability zone"
}


variable "security_group_name" {
  type        = string
  description = "name of the security group"
}

variable "my_public_ip" {
  type        = string
  description = "public ip"
}

variable "my_instance_type" {
  type        = string
  description = "instance type"
}

variable "my_key_name" {
  type        = string
  description = "Your aws key name"
}