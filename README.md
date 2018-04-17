# glue.codes
## Infrastructure orchestration

We use [https://www.terraform.io/](Terraform) as our orchestration tool.

Module to VPC orchestration.

Example:

```
variable "environment" {
  default = "staging"
}
provider "aws" {
  access_key = "${var.aws["access_key"]}"
  secret_key = "${var.aws["secret_key"]}"
  region     = "${var.aws["region"]}"
}

module "lzerma-aws-vpc" {
  source    = "git@github.com:lzerma/terraform-aws-vpc.git"

  stack_details = {
    stack_version = "v1.0"
    env      = "${var.environment}"
    region    = "${var.aws["region"]}"
  }

  vpc_name = "${var.environment}"
  vpc_details = {
      vpc_cidr_block = "10.10.0.0/20"
      env      = "${var.environment}"
  }

  subnet_cidrs = ["10.10.0.0/22", "10.10.15.0/24"]
}
```
