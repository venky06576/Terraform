resource "aws_instance" "Sandbox_Example" {

    ami="ami-09e6f87a47903347c"
    instance_type = "t3.micro"

    vpc_security_group_ids = [aws_security_group.Sandbox_SG.id]

  tags = {
    name="Sandbox-Example for EC2"
  }

}

resource "aws_security_group" "Sandbox_SG" {
    name = "Allow All"
    description = "Allow all traffic from the internet"

    ingress  {

        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }

    egress   {

        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        
    }
    tags = {
     name = "security group"  
    }
  
}