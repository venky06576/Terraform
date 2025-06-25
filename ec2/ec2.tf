resource "aws_instance" "Roboshop" {
    ami = "ami-09e6f87a47903347c"
    instance_type = "t3.micro"
    
    tags = {

        name="Hello World"
    }

  
}

resource "aws_security_group" "allow_all" {
    name="Allow all"
    description="All traffice "

    ingress {
        from_port = 0
        to_port = 0
        protocol   = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        
        
    }

    egress {
        from_port = 0
        to_port = 0
        protocol   = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        
        
    }

}