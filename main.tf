module "lzerma-aws-vpc" {
  source = "./vpc"
  version = "0.0.5"

  stack_details = {
    stack_version = "${var.stack_details["version"]}"
    env      = "${var.environment}"
    region    = "${var.stack_details["region"]}"
  }

  vpc_name = "${var.environment}"
  vpc_details = {
      vpc_cidr_block = "${var.vpc_details["vpc_cidr_block"]}"
      env      = "${var.environment}"
  }

  subnet_cidrs = "${var.subnet_cidrs}"
}
