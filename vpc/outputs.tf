
output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "subnet_ids" {
  value = ["${aws_subnet.default.*.id}"]
}

output "vpc_security_group_ids" {
  value = ["${aws_security_group.default.id}"]
}
