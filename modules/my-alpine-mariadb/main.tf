resource "docker_container" "my_alpine_mariadb" {
  image     = "${docker_image.my_alpine_mariadb.latest}"
  name      = "${var.name}"
  env       = ["${var.env_mysql_username}=${var.mysql_username}",
               "${var.env_mysql_password}=${var.mysql_password}",
               "${var.env_mysql_dbname}=${var.mysql_dbname}",
               "${var.env_mysql_root_password}=${var.mysql_root_password}"]
  ports {
    internal = 3306
    external = "${var.external_port}"
  }
  
  volumes {
    container_path = "/var/lib/mysql"
    host_path      = "${var.base_host_path}/${var.data_host_path}"
  }
}

resource "docker_image" "my_alpine_mariadb" {
  name = "mkscsy/docker-alpine-mariadb:latest"
}

