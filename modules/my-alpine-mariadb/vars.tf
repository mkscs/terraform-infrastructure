
variable "name" {
  default = "my_alpine_mariadb"
}

variable "base_host_path" {
  default = "/home/rancher/storage/"
}

variable "data_host_path" {
  default = "my_alpine_mariadb_test"
}

variable "external_port" {
  default = 3306
}
variable "env_mysql_username" {
  default = "MYSQL_USERNAME"
}

variable "mysql_username" { 
  default = ""
}

variable "env_mysql_password" {
  default = "MYSQL_PASSWORD"
}

variable "mysql_password" {
  default = ""
  
}

variable "env_mysql_dbname" {
  default = "MYSQL_DBNAME"
}

variable "mysql_dbname" {
  default = ""
  
}

variable "env_mysql_root_password" {
  default = "MYSQL_ROOT_PASSWORD"
}

variable "mysql_root_password" {
  default = ""
  
}
