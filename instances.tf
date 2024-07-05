# instances.tf
resource "aws_instance" "web" {
  count             = 2
  ami               = "ami-0e001c9271cf7f3b9"  # Replace with a valid AMI ID for your region
  instance_type     = "t2.micro"
  subnet_id         = element(aws_subnet.public[*].id, count.index)
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "web-instance-${count.index + 1}"
  }
}

resource "aws_instance" "app" {
  count             = 2
  ami               = "ami-0e001c9271cf7f3b9"  # Replace with a valid AMI ID for your region
  instance_type     = "t2.micro"
  subnet_id         = element(aws_subnet.private_app[*].id, count.index)
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "app-instance-${count.index + 1}"
  }
}

resource "aws_instance" "bastion" {
  ami               = "ami-0e001c9271cf7f3b9"  # Replace with a valid AMI ID for your region
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.public[0].id  # Ensure this is a valid public subnet ID
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name          = "aws_login"             # Replace with your SSH key pair name

  tags = {
    Name = "bastion-instance"
  }
}
