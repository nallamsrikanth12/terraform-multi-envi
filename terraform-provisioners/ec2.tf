resource "aws_instance" "expense" {
  ami           = data.aws_ami.ami_info.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-007ba6b4f4350cbdf"] 


provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ips.txt"  # self is aws.intstance.expense
}

#   provisioner "local-exec" {
#     command = "ansiblle-playbook -i private_ips.txt web.yaml"
#   }
   connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

   provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

  tags = {

    Name = "nginx"
  }

}