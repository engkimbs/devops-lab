resource "aws_instance" "instances" {
	instance_type = "${var.instance_type}"
	ami = "${var.ami}"
	count = "${var.num}"
	associate_public_ip_address = "${var.associate_public_ip_address}"
	vpc_security_group_ids = ["${aws_security_group.ansible_all.id}"]
	key_name = "${var.key_name}"
	availability_zone = "${var.availability_zone}"

	root_block_device {
		volume_size = "${var.root_volume_size}"
		volume_type = "${var.root_volume_type}"
		delete_on_termination = true
	}

	user_data = ""

	timeouts {
		create = "20m"
	}

}
