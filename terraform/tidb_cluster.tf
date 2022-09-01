
resource "local_file" "tidb_cluster_file" {
    content  = <<-DOC
# For more information about the format of the tiup cluster topology file, consult
# https://docs.pingcap.com/tidb/stable/production-deployment-using-tiup#step-3-initialize-cluster-topology-file

# # Global variables are applied to all deployments and used as the default value of
# # the deployments if a specific deployment value is missing.
global:
  # # The OS user who runs the tidb cluster.
  user: "tidb"
  # # SSH port of servers in the managed cluster.
  ssh_port: 22
  # # Storage directory for cluster deployment files, startup scripts, and configuration files.
  deploy_dir: "/home/ubuntu/.tiup/cluster/tidb-deploy"
  # # TiDB Cluster data storage directory
  data_dir: "/home/ubuntu/.tiup/cluster/tidb-data"
  # # Supported values: "amd64", "arm64" (default: "amd64")
  arch: "amd64"

pd_servers:
  - host: ${aws_instance.pd_server.public_ip}
     
tidb_servers:
  - host: ${aws_instance.tidb_server.public_ip}

tikv_servers:
  - host: ${aws_instance.tikv_server.public_ip}

monitoring_servers:
  - host: ${aws_instance.monitor_server.public_ip}

grafana_servers:
  - host: ${aws_instance.grafana_server.public_ip}
    DOC
    filename = "/home/jpi/proyecto_tesis/ansible/cluster.yaml"
    depends_on = [
      aws_instance.pd_server,
      aws_instance.tidb_server,
      aws_instance.tikv_server,
      aws_instance.monitor_server,
      aws_instance.grafana_server
    ]
}