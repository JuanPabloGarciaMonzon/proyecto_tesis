resource "local_file" "oltp_common_file" {
    content  = file("${path.module}/base_files/oltp_common.lua")
    filename = "/home/jpi/proyecto_tesis/ansible/oltp_common.lua"
}