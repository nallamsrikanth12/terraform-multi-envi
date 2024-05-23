resource "aws_instance" "expense" {
  ami           = data.aws_ami.ami_info.id
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-007ba6b4f4350cbdf"] 
  tags = {

    Name = terraform.workspace
  }

}