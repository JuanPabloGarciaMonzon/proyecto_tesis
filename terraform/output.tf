	output "admin_mysql" {
	  value = aws_instance.mysql.public_ip
	}
	output "admin_mongodb" {
	  value = aws_instance.mongodb.public_ip
	}
	output "admin_tidb" {
	  value = aws_instance.tidb.public_ip
	}