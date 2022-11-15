variable "region" {
  type = string
  description = "name of your aws region"
}

variable "availability_zone" {
  type = string
  description = "name of your availability zone"
}

variable "my_instance_type" {
  type = string
  description = "aws instance type"
}

variable "key_name" {
  type = string
  description = "your aws key name"
}

variable "buket_name" {
  type = string
  description = "name of your bucket"
}

variable "buket_key" {
  type = string
  description = "name of your backend s3 key"
}

variable "ebs_size" {
  type = number
  description = "size of your volume"
}