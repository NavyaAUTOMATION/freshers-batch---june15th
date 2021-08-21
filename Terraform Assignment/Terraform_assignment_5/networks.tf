resource "docker_network" "private_bridge_network" {
  name = "${var.mysql1_network_name}"
  driver = "bridge"
  internal = "true"
}

