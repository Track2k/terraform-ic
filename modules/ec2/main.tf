resource "aws_instance" "instance1" {
  count = 1
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id              = var.subnet_id
  key_name               = "tf-key-1"

  tags = {
    Name = "Manjunath-TF-EC2"
  }
}

resource "aws_key_pair" "tf-key" {
  key_name   = "tf-key-1"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf-private-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tf-private-key"

}
resource "aws_security_group" "ec2" {
  description = "Security group for EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
