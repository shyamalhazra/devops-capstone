variable "region" {
  type        = string
  default     = "us-east-1"
  description = "description"
}
variable "no_of_instances" {
  default = 2
}
variable "ami_id" {
  default = "ami-03a6a731beee8dd4d"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "id_rsa.pub"
}
variable "private_key_name" {
  default = "/home/ubuntu/.ssh/sample_ubuntu.pem"
}