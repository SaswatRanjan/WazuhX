provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "wazuh_manager" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.large"
  key_name      = "your-keypair"

  tags = {
    Name = "WazuhX-Manager"
  }
}

resource "aws_security_group" "wazuh_sg" {
  name = "wazuhx-security-group"

  ingress {
    from_port   = 1514
    to_port     = 1515
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5601
    to_port     = 5601
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
