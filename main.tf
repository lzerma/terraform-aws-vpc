module "lzerma-aws-vpc" {
  source = "./vpc"
  version = "0.0.5"

  stack_details = {
    env       = "${var.environment}"
    region    = "${var.stack_details["region"]}"
    version   = "${var.stack_details["version"]}"
  }

  vpc_name = "${var.environment}"
  vpc_details = {
      vpc_cidr_block = "${var.vpc_details["vpc_cidr_block"]}"
      env      = "${var.environment}"
  }

  subnet_cidrs = "${var.subnet_cidrs}"
}
