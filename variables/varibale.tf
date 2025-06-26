variable "ami" {
  type = string
  default = "ami-09e6f87a47903347c"
  description = "Ami value for joindevops"
  }

  variable "instance_type" {
        default = "t3.micro"
      }

      

    variable "ec2-tags" {
        type = map(string)    
            default = {
              Name = "HelloWorld"
              Purpose= "varibale-demo"
            }

        
      
    }

    variable "sg_name" {
       default = "Allow_all"
    }


     variable "sg_description"{
        default = "All traffic "
     }    

    variable "from_port" {

         default = 0

    }

    variable "to_port" {

         default = 0

    }

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}