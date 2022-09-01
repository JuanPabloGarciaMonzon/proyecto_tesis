	resource "aws_instance" "mysql" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.mysql}
	}
	resource "aws_instance" "mongodb" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.mongodb}
	}
	resource "aws_instance" "tidb" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.tidb}
	}
	resource "aws_instance" "pd_server" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.pd_server}
	  ebs_block_device {
		device_name = "/dev/sda1"
		volume_size = var.ebs_volume_size
	  }
	}
	resource "aws_instance" "tidb_server" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.tidb_server}
	  ebs_block_device {
		device_name = "/dev/sda1"
		volume_size = var.ebs_volume_size
	  }
	}
	resource "aws_instance" "tikv_server" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.tikv_server}
	  ebs_block_device {
		device_name = "/dev/sda1"
		volume_size = var.ebs_volume_size
	  }
	}
	resource "aws_instance" "monitor_server" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.monitor_server}
	  ebs_block_device {
		device_name = "/dev/sda1"
		volume_size = var.ebs_volume_size
	  }
	}
	resource "aws_instance" "grafana_server" {
	  ami           = var.ami
	  instance_type = var.instance_type
	  availability_zone = var.az
	  key_name      = var.key_name
	  vpc_security_group_ids = var.security_group
	  tags = {Name = var.grafana_server}
	  ebs_block_device {
		device_name = "/dev/sda1"
		volume_size = var.ebs_volume_size
	  }
	}
