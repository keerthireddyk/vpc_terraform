resource "aws_instance" "example" {
  ami             = var.ami_id
  instance_type   = var.inst_type
  key_name        = var.keyname
  security_groups = var.security_group_names


  tags = {
    name = var.tag_value
  }

}