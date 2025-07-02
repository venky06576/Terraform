locals {
  final_name = "your_final_name_value"
  ec2_tags = {
    Name        = "example-instance"
    Environment = "dev"
  }
}

output "final_name" {
    value = local.final_name
}

output "ec2_tags" {
    value = local.ec2_tags
}