locals {
  name     = var.override_name == null ? "${var.system_short_name}-${var.app_name}-${lower(var.environment)}-sbq" : var.override_name
}

resource "azurerm_servicebus_queue" "servicebus_queue" {
  name         = local.name
  namespace_id = var.azurerm_servicebus_namespace.id

  tags = var.tags
}
