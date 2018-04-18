# Stack Details
variable "stack_details" {
  type = "map"

  default = {
    env      = ""
    region   = ""
    version = ""
  }
}

# VPC Name
variable "vpc_name" {}

# VPC Details
variable "vpc_details" {
  type = "map"

  default = {
    dns_suffix     = ""
    num_az         = ""
    vpc_cidr_block = ""
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
