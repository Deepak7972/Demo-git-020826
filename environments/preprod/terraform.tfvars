resource = {
  rg1 = {
    name     = "rg1"
    location = "centralus"
  }
}

vnet = {
  Vnet1 = {
    name                = "dev-vnet"
    location            = "centralus"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  frontend-subnet = {
    name                 = "frontend-subnet"
    location             = "centralus"
    resource_group_name  = "rg1"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  backend-subnet = {
    name                 = "backend-subnet"
    location             = "centralus"
    resource_group_name  = "rg1"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

publicip = {
  pip1 = {
    name                = "front-pip"
    location            = "centralus"
    resource_group_name = "rg1"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "back-pip"
    location            = "centralus"
    resource_group_name = "rg1"
    allocation_method   = "Static"
  }
}
vms = {
  vm1 = {
    nic_name           = "frontend_vm_nic"
    location           = "centralus"
    rg_name            = "rg1"
    nic_subnet_name    = "frontend-subnet"
    nic_vnet_name      = "dev-vnet"
    nic_public_ip_name = "front-pip"
    vm_name            = "vm1"
    vm_size            = "Standard_F1als_v7"
    admin_username     = "adminuser"
    admin_password     = "Deepak@1996"
  }

  vm2 = {
    nic_name           = "backend_vm_nic"
    location           = "centralus"
    rg_name            = "rg1"
    nic_subnet_name    = "backend-subnet"
    nic_vnet_name      = "dev-vnet"
    nic_public_ip_name = "back-pip"
    vm_name            = "vm2"
    vm_size            = "Standard_F1als_v7"
    admin_username     = "adminuser"
    admin_password     = "Deepak@1996"
  }
}

key_vault = {
  key_vault1 = {
    name                = "examplekeyvault289"
    location            = "centralus"
    resource_group_name = "rg1"
    sku_name            = "standard"
  }
}