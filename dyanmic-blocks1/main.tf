resource "aws_vpc" "sandbox_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "sandbox_vpc"
  }
}

resource "aws_subnet" "sandbox_subnet" {
  vpc_id     = aws_vpc.sandbox_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sandbox_subnet"
  }
}

resource "aws_security_group" "sandbox_sg" {
  name   = "sandbox_sg"
  vpc_id = aws_vpc.sandbox_vpc.id

  dynamic "ingress" {
    for_each = var.settings

    content {
      description = ingress.key
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = [aws_vpc.sandbox_vpc.cidr_block]
    }
  }

  tags = {
    Name = "sandbox_sg"
  }
}

variable "settings" {
  type = map(object({
    port = number
  }))
  default = {
    "Allows SSH access" = {
      port = 22
    },
    "Allows HTTP traffic" = {
      port = 80
    },
    "Allows HTTPS traffic" = {
      port = 443
    }
  }
}