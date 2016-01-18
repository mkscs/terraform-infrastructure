# terraform-infrastructure
Terraform infrastructure blueprints

**modules/** 
- contains blueprints / modules definitions that can be included in deployments

**deployments/** 
- specify a deployment and include modules

You need to define your own host and certs path in deployments/ main.tf file.
Applicable variables that can be set can be seen in modules/module_name/vars.tf.

