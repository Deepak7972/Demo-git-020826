resource = {
  rg1 = {
    name     = "rg2"
    location = "centralus"
  }
}

vnet = {
  Vnet1 = {
    name                = "prd-vnet"
    location            = "centralus"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  frontend-subnet = {
    name                 = "frontend-subnet-prd"
    location             = "centralus"
    resource_group_name  = "rg1"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  backend-subnet = {
    name                 = "backend-subnet-prd"
    location             = "centralus"
    resource_group_name  = "rg1"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

publicip = {
  pip1 = {
    name                = "front-pip-prd"
    location            = "centralus"
    resource_group_name = "rg1"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "back-pip-prd"
    location            = "centralus"
    resource_group_name = "rg1"
    allocation_method   = "Static"
  }
}
vms = {
  vm1 = {
    nic_name           = "frontend_vm_nic-prd"
    location           = "centralus"
    rg_name            = "rg1"
    nic_subnet_name    = "frontend-subnet"
    nic_vnet_name      = "dev-vnet"
    nic_public_ip_name = "front-pip"
    vm_name            = "vm1-prd"
    vm_size            = "Standard_F1als_v7"
    admin_username     = "adminuser"
    admin_password     = "Deepak@1996"
  }

  vm2 = {
    nic_name           = "backend_vm_nic-prd"
    location           = "centralus"
    rg_name            = "rg1"
    nic_subnet_name    = "backend-subnet"
    nic_vnet_name      = "dev-vnet"
    nic_public_ip_name = "back-pip"
    vm_name            = "vm2-prd"
    vm_size            = "Standard_F1als_v7"
    admin_username     = "adminuser"
    admin_password     = "Deepak@1996"
  }
}