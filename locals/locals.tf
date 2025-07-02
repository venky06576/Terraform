variable "Project" {
    default = "Roboshop"
  description = "The name of the Roboshop."
}

variable "environment" {

    default ="DEV"
    description = "The environment for the Roboshop."


}

variable "componet" {
    default = "frontend"
    description = "The component of the Roboshop."

}

variable "common_tags" {
    type = map(string)
    default = {
        Owner = "DevOps Team"
        Project = "Roboshop"
        Environment = "DEV"
    }
    description = "Common tags for all resources in the Roboshop project."
  
}