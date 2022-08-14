output "aws_instance_public_ips" {
	value = ["${aws_instance.instances.*.public_ip}"]
}
