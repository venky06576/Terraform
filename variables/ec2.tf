resource "aws_instance" "Roboshop" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {

    name = "Hello world"

  }

}

resource "aws_security_group" "allow_all" {

    name = var.sg_name
    description = var.sg_description

    ingress  {
        from_port = var.from_port
        to_port =var.to_port
        protocol =-1
        cidr_blocks=var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }

    egress  {
           from_port = var.from_port
        to_port =var.to_port
        protocol =-1
        cidr_blocks=var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
   
    }  
    tags = var.sg_tags
}