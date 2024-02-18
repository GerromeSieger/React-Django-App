resource "aws_security_group" "instances-sg" {
  name = "instances-security-groups"
}

resource "aws_security_group_rule" "allow-inbound" {
  type              = "ingress"
  security_group_id = aws_security_group.instances-sg.id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

}

resource "aws_instance" "web" {
  ami             = var.common_instance_params.ami
  instance_type   = var.common_instance_params.instance_type
  security_groups = [aws_security_group.instances-sg.name]
  key_name        = var.common_instance_params.key_name
  tags = {
    Name = "vm1-react-django-app"
  }


}

resource "aws_instance" "web1" {
  ami             = var.common_instance_params.ami
  instance_type   = var.common_instance_params.instance_type
  security_groups = [aws_security_group.instances-sg.name]
  key_name        = var.common_instance_params.key_name
  tags = {
    Name = "vm2-react-django-app"
  }

}

resource "aws_instance" "web2" {
  ami             = var.common_instance_params.ami
  instance_type   = var.common_instance_params.instance_type
  security_groups = [aws_security_group.instances-sg.name]
  key_name        = var.common_instance_params.key_name
  tags = {
    Name = "vm3-react-django-app"
  }


}
resource "aws_instance" "web3" {
  ami             = var.common_instance_params.ami
  instance_type   = var.common_instance_params.instance_type
  security_groups = [aws_security_group.instances-sg.name]
  key_name        = var.common_instance_params.key_name
  tags = {
    Name = "master-vm"
  }


}
