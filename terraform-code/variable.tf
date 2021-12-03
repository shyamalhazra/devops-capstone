variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "description"
}
variable "zones"{
 default=["ap-south-1a","ap-south-1b"]
}
variable "no_of_instances" {
  default = 1
}
variable "ami_id" {
  default = "ami-0567e0d2b4b2169ae"
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
