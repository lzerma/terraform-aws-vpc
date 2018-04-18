# Stack Details
variable "stack_details" {
  type = "map"

  default = {
    env      = ""
    region   = ""
    stack_version = ""
  }
}

# Environment 
variable "environment" {
  type    = "string"
  default = ""
}

# VPC Name
variable "vpc_name" {
  type    = "string"
  default = ""
}

# VPC Details
variable "vpc_details" {
  type = "map"

  default = {
    dns_suffix     = ""
    num_az         = ""
    vpc_cidr_block = ""
    stack_version = ""
  }
}

variable "az_suffix" {
  type    = "list"
  default = ["a", "b", "c"]
}

# VPC CIDR Blocks
variable "subnet_cidrs" {
  type = "list"
  default = [""]
}
