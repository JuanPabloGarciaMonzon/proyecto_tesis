resource "local_file" "ssh_config_file" {
    content  = <<-DOC
Host mysql
    HostName ${aws_instance.mysql.public_dns}
    User ubuntu
    IdentityFile C:\Users\jp_gm\Documentos\AWS_Credentials\admin_aws.pem

Host mongodb
    HostName ${aws_instance.mongodb.public_dns}
    User ubuntu
    IdentityFile C:\Users\jp_gm\Documentos\AWS_Credentials\admin_aws.pem

Host tidb
    HostName ${aws_instance.tidb.public_dns}
    User ubuntu
    IdentityFile C:\Users\jp_gm\Documentos\AWS_Credentials\admin_aws.pem

    DOC
    filename = "/mnt/c/Users/jp_gm/.ssh/config"
    depends_on = [
      aws_instance.mysql,aws_instance.mongodb,aws_instance.tidb]
}