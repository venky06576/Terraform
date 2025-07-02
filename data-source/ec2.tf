resource "aws_instance" "sandbox_sample" {

    ami=data.aws_ami.joindevops.id
    instance_type = "t3.micro"
    vpc_security_group_ids = aws_security_group.allow_all.ID

    tags = {
    
      Name = "SandboxSampleInstance"
    }
}

resource "aws_security_group" "sandbox_sg" {

    name        = "sandbox_sg"
    description = "Allow all inbound traffic"

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

}