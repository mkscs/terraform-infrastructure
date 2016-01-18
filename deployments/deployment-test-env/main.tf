provider "docker" {
  host      = ""
  cert_path = ""
}

module "vol-cleanup" {
  source    = "./modules/vol-cleanup"
}

module "my-alpine-mariadb" {
  source         = "./modules/my-alpine-mariadb"
  data_host_path = "mariadb_data_db"
  mysql_username = "foo"
  mysql_password = "foobar"
  mysql_dbname   = "eridanus"
  name           = "mariadb_container"
}

module "my-alpine-mongodb" {
  source                 = "./modules/my-alpine-mongodb"
  data_host_path         = "mongodb_data_db"
  mongodb_username       = "foo"
  mongodb_password       = "foo"
  mongodb_dbname         = "sirius"
  mongodb_storageengine  = "wiredTiger"
  mongodb_journaling     = "journaling"
  name                   = "mongodb_container"
}