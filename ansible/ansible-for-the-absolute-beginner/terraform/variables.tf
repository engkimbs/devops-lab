variable "region" {
	description = "region"
	default = "ap-northeast-2"
}

variable "vpc_cidr_block" {
	default = "172.31.0.0/16"
}

variable "my_ip" {
	default = "34.230.37.216/32"
}

variable "use_default" {
	default = true
}

variable "ami" {
	description = "AMI that will be used for the instance"
	default     = "ami-04876f29fd3a5e8ba"
}

variable "num" {
	description = "How many instances should be created"
	default     = 2
}

variable "availability_zone" {
	default = "ap-northeast-2a"
}


variable "instance_type" {
	description = "instance type"
	default = "t2.medium"
}

variable "root_volume_size" {
	description = "specify the root volume size"
	default = "30"
}

variable "root_volume_type" {
	description = "specify the root volume type"
	default = "gp3"
}

variable "security_group_ids" {
	description = "Firewall IDs to use for these instances"
	  type        = list
	  default     = ["sg-07a2c68872e0cfc9f"]
}

variable "key_name" {
  description = "The SSH key to use for these instances."
  default = "ansible"
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instances"
  default     = true
}
