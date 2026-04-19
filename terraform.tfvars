resource_group_name = "stcapp-rg"
location            = "East US"
vnet_name           = "demo-vnet"

address_space = ["10.0.0.0/16"]

subnet_names = [
  "appgw-subnet",
  "backend-subnet",
  "data-subnet"
]

subnet_prefixes = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]