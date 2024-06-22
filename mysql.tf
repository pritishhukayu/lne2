resource "azurerm_mysql_flexible_server" "mysql" {
  name                = var.mysql_server_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  administrator_login = var.mysql_admin_username
  administrator_password = var.mysql_admin_password

  sku_name   = "B_Standard_B1ms"
  storage_mb = 5120
  version    = "8.0"

  tags = {
    environment = "production"
  }
}

resource "azurerm_mysql_flexible_server_database" "exampledb" {
  name                = "exampledb"
  resource_group_name = azurerm_resource_group.main.name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
