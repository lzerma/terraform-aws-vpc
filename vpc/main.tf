resource "aws_vpc" "vpc" {

  cidr_block           = "${var.vpc_details["vpc_cidr_block"]}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    "Name"       = "${var.vpc_name}"
    "stack_name" = "${var.vpc_name}"
    "stack_version"   = "${var.stack_details["stack_version"]}"
  }
}

resource "aws_subnet" "default" {
  count = "${length(var.subnet_cidrs)}"
  vpc_id = "${aws_vpc.vpc.id}"
  availability_zone       = "${format("%s%s", var.stack_details["region"], element(var.az_suffix, count.index))}"
  # needs change for specific environments.
    cidr_block              = "${element(var.subnet_cidrs, count.index)}"
  tags {
      "Name"       = "${format("%s-default", var.vpc_name)}"
      "stack_name" = "${var.vpc_name}"
      "stack_version"   = "${var.stack_details["stack_version"]}"
      "test" = "${format("%s%s", var.stack_details["region"], element(var.az_suffix, count.index))}"
    }
}


resource "aws_security_group" "default" {
  vpc_id = "${aws_vpc.vpc.id}"

  # needs change for specific environments.
  # cidr_block = "10.10.0.0/16"
  tags {
      "Name"       = "${format("%s-default", var.vpc_name)}"
      "stack_name" = "${var.vpc_name}"
      "stack_version"   = "${var.stack_details["stack_version"]}"
    }
}
