output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "aci_ip_address" {
  value = azurerm_container_group.aci.ip_address
}

output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.mysql.fully_qualified_domain_name
}
