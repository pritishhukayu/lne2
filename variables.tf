variable "resource_group_name" {
  description = "lne-PritishRG"
  type        = string
}

variable "acr_name" {
  description = "lneACR"
  type        = string
}

variable "aks_cluster_name" {
  description = "lneAks"
  type        = string
}

variable "aci_name" {
  description = "lneAci"
  type        = string
}

variable "mysql_server_name" {
  description = "lneMySQL"
  type        = string
}

variable "mysql_admin_username" {
  description = "lneMysqlAdmin"
  type        = string
}

variable "mysql_admin_password" {
  description = "lnMysqlAdminPassword"
  type        = string
  sensitive   = true
}

variable "docker_image" {
  description = "lneacr.azurecr.io/lnenoderepo:50"
  type        = string
}
