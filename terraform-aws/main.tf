resource "aws_instance" "test_instance" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.mykey.key_name
  subnet_id              = aws_subnet.Public.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = file("${path.module}/script.sh")
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.image_name]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}



