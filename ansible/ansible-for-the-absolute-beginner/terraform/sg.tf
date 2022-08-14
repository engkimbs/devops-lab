resource "aws_security_group" "ansible_all" {
	name = "allow_ansible"
	description = "Allow the ansible controller traffic"
	vpc_id = "${data.aws_vpc.vpc.id}"
	tags = {
		Name = "ansible_all"
	}

	ingress {
		description = "ALL"
		from_port = 0
		to_port = 0
		protocol = -1
		cidr_blocks = ["${var.my_ip}"]
	}
}
