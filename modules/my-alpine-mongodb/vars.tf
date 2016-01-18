
variable "name" {
  default = "my_alpine_mongodb"
}

variable "base_host_path" {
  default = "/home/rancher/storage/"
}

variable "data_host_path" {
  default = "my_alpine_mongodb_test"
}

variable "external_port" {
  default = 27017
}
variable "env_mongodb_username" {
  default = "MONGODB_USERNAME"
}

variable "MONGODB_USERNAME" { 
  default = ""
}

variable "env_mongodb_password" {
  default = "MONGODB_PASSWORD"
}

variable "mongodb_password" {
  default = ""
}

variable "env_mongodb_dbname" {
  default = "MONGODB_DBNAME"
}

variable "mongodb_dbname" {
  default = ""
  
}

variable "env_mongodb_storageengine" {
  default = "MONGODB_STORAGEENGINE"
}

variable "mongodb_storageengine" {
  default = "" 
}

variable "env_mongodb_journaling" {
  default = "MONGODB_JOURNALING"
}

variable "mongodb_journaling" {
  default = "" 
}