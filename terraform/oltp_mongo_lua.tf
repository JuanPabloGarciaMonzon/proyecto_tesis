resource "local_file" "oltp_mongo_file" {
    content  = file("${path.module}/base_files/oltp-mongo.lua")
    filename = "/home/jpi/proyecto_tesis/ansible/oltp-mongo.lua"
}