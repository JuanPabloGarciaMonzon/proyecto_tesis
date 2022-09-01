resource "local_file" "ansible_hosts_file" {
    content  = <<-DOC
    [mysql]
    ${aws_instance.mysql.public_ip}

    [mongodb]
    ${aws_instance.mongodb.public_ip}

    [tidb]
    ${aws_instance.tidb.public_ip}

    [tidb_machines]
    ${aws_instance.pd_server.public_ip}
    ${aws_instance.tidb_server.public_ip}
    ${aws_instance.tikv_server.public_ip}
    ${aws_instance.monitor_server.public_ip}
    ${aws_instance.grafana_server.public_ip}

    [mysql:vars]
    ansible_user = ubuntu
    ansible_ssh_private_key_file = /etc/ansible/admin_aws.pem
    ansible_python_interpreter = /usr/bin/python3
    ansible_ssh_common_args='-o StrictHostKeyChecking=no'

    [mongodb:vars]
    ansible_user = ubuntu
    ansible_ssh_private_key_file = /etc/ansible/admin_aws.pem
    ansible_python_interpreter = /usr/bin/python3
    ansible_ssh_common_args='-o StrictHostKeyChecking=no'

    [tidb:vars]
    ansible_user = ubuntu
    ansible_ssh_private_key_file = /etc/ansible/admin_aws.pem
    ansible_python_interpreter = /usr/bin/python3
    ansible_ssh_common_args='-o StrictHostKeyChecking=no'

    [tidb_machines:vars]
    ansible_user = ubuntu
    ansible_ssh_private_key_file = /etc/ansible/admin_aws.pem
    ansible_python_interpreter = /usr/bin/python3
    ansible_ssh_common_args='-o StrictHostKeyChecking=no'
    DOC
    filename = "/etc/ansible/hosts"
    depends_on = [
      aws_instance.mysql,
      aws_instance.mongodb,
      aws_instance.tidb,
      aws_instance.pd_server,
      aws_instance.tidb_server,
      aws_instance.tikv_server,
      aws_instance.monitor_server,
      aws_instance.grafana_server
    ]
}