resource "aws_instance" "nadeploymentServers" {
    count=var.no_of_instances
    ami = var.ami_id
    availability_zone = var.zones[count.index]
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-0bb9734690fba169a"]
    key_name = "sample_ubuntu"
	
    tags = {
    Name = "Server-${count.index +1}"
  	}
    connection {
      host = self.public_ip
      type = "ssh"
      user = "ubuntu"
      private_key = file(var.private_key_name)
    }
    /*
    provisioner "remote-exec" {
      script = "files/docker_setup.sh"
    }
    */	
	provisioner "remote-exec" {
      script = "files/deployment.sh"
    }
  
}
