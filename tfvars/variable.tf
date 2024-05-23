  variable "instance_names" {
    type        = map
#   default     = {
#     db-dev = "t3.small"
#     backend-dev = "t3.micro"
#     frontend-dev = "t3.micro"
#   }
 }

    variable "common_tags" {
       type = map
#     default = {
#         Project = "Expense"
#         Terraform = "true"
#     }
    }

    variable "domain_name" {
#     default = "srikantheswar.online"
    }

    variable "zone_id" {
#     default = "Z09728512G1GJV5UP5N8L"
    }

  variable "environment" {
#     default =  = "dev"
  
 }