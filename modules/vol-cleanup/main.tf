resource "docker_container" "vol_cleanup" {
  image      = "${docker_image.vol_cleanup.latest}"
  name       = "vol_cleanup"
  must_run   = true
  privileged = true
  command   = ["[-n] -i 5"]
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  
  volumes {
    container_path = "/var/lib/docker"
    host_path      = "/var/lib/docker"
  }
}

resource "docker_image" "vol_cleanup" {
  name      = "cloudnautique/vol-cleanup:latest"
}