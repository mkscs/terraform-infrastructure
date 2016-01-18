resource "docker_container" "my_alpine_mongodb" {
  image     = "${docker_image.my_alpine_mongodb.latest}"
  name      = "${var.name}"
  env       = ["${var.env_mongodb_username}=${var.mongodb_username}",
               "${var.env_mongodb_password}=${var.mongodb_password}",
               "${var.env_mongodb_dbname}=${var.mongodb_dbname}",
               "${var.env_mongodb_storageengine}=${var.mongodb_storageengine}",
               "${var.env_mongodb_journaling}=${var.mongodb_journaling}"]
  ports {
    internal = 27017
    external = "${var.external_port}"
  }
  
  volumes {
    container_path = "/data/db"
    host_path      = "${var.base_host_path}/${var.data_host_path}"
  }
}

resource "docker_image" "my_alpine_mongodb" {
  name = "mkscsy/docker-alpine-mongodb:latest"
}