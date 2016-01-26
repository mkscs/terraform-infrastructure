resource "docker_container" "my_docker_compose" {
  image     = "${docker_image.my_docker_compose.latest}"
  name      = "${var.name}"
  command   = ["${var.cmd}"]
  
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  
  volumes {
    container_path = "/var/lib/docker"
    host_path      = "/var/lib/docker"
  }
  
  volumes {
    container_path = "/compose_project_${var.compose_project_name}"
    host_path      = "${var.base_host_path}/${var.compose_project_name}"
  }
  
}

resource "docker_image" "my_docker_compose" {
  name             = "mkscsy/docker-alpine-compose"
}