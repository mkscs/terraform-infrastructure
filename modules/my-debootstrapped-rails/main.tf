resource "docker_container" "my_debootstrapped_rails" {
  image     = "${docker_image.my_debootstrapped_rails.latest}"
  name      = "${var.name}"
  env       = ["RAILS_APP_NAME=${var.app_name}"]
  
  ports {
    internal = 3000
    external = "${var.external_port}"
  }
  
  volumes {
    container_path = "/rails_app"
    host_path      = "${var.base_host_path}/${var.app_name}"
  }
}

resource "docker_image" "my_debootstrapped_rails" {
  name      = "mkscsy/debootstrapped-rails:latest"
}