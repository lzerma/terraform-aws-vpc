
output "vpc_id" {
  value = "${module.lzerma-aws-vpc.vpc_id}"
}

output "subnet_ids" {
  value = "${module.lzerma-aws-vpc.subnet_ids}"
}

output "vpc_security_group_ids" {
  value = "${module.lzerma-aws-vpc.vpc_security_group_ids}"
}
