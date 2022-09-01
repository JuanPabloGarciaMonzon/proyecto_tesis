
resource "local_file" "mysql_config_file" {
    content  = file("${path.module}/base_files/mysql_config")
    filename = "/home/jpi/proyecto_tesis/ansible/mysql_config"
    depends_on = [aws_instance.tidb_server]
}
resource "local_file" "mongodb_config_file" {
    content  = file("${path.module}/base_files/mongodb_config")
    filename = "/home/jpi/proyecto_tesis/ansible/mongodb_config"
    depends_on = [aws_instance.tidb_server]
}
resource "local_file" "tidb_config_file" {
    content  = <<-DOC
mysql-host=${aws_instance.tidb_server.public_ip}
mysql-port=4000
mysql-user=root
mysql-db=tidb_test
time=600
threads=128
report-interval=10
db-driver=mysql
    DOC
    filename = "/home/jpi/proyecto_tesis/ansible/config"
    depends_on = [aws_instance.tidb_server]
}