
	variable "mysql" {
	  type    = string
	  default = "mysql"
	}
	variable "mongodb" {
	  type    = string
	  default = "mongodb"
	}
	variable "tidb" {
	  type    = string
	  default = "tidb"
	}
	variable "pd_server" {
	  type    = string
	  default = "pd_server"
	}
	variable "tidb_server" {
	  type    = string
	  default = "tidb_server"
	}
	variable "tikv_server" {
	  type    = string
	  default = "tikv_server"
	}
	variable "monitor_server" {
	  type    = string
	  default = "monitor_server"
	}
	variable "grafana_server" {
	  type    = string
	  default = "grafana_server"
	}
	variable "key_name" {
	default = "admin_aws"
	}
	variable "security_group" {
	type    = set(string)
	default = ["launch-wizard-10"]
	}
	variable "ami" {
	  default = "ami-00978328f54e31526"
	}
	variable "az" {
	  default = "us-east-2b"
	}
	variable "instance_type" {
	  default = "t2.medium"
	}
	variable "ebs_volume_size" {
	  type    = number
	  default = 50
	}
