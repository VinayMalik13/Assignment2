module "rgroup-1109" {
  source = "./modules/rgroup-1109"

   resource_group_name = var.resource_group_name
   location = var.location 

   common_tags = local.common_tags

}

module "network-1109" {
  source = "./modules/network-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location
  
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  nsg_name = var.nsg_name

  common_tags = local.common_tags
}

module "common-1109" {
  source = "./modules/common-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location

  common_tags = local.common_tags
}

module "vmlinux-1109" {
  source = "./modules/vmlinux-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location
  
  subnet_id =  module.network-1109.subnet_id
  storage_account_uri = module.common-1109.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "vmwindows-1109" {
  source = "./modules/vmwindows-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location
  
  subnet_id =  module.network-1109.subnet_id
  storage_account_uri = module.common-1109.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "datadisk-1109" {
  source = "./modules/datadisk-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location

  linux_vm_ids        = module.vmlinux-1109.vmlinux.ids 
  windows_vm_ids      = module.vmwindows-1109.windows.ids
  
  all_vm_ids = concat(module.vmlinux-1109.vmlinux.ids, module.vmwindows-1109.windows.ids) 
  common_tags = local.common_tags
}

module "loadbalancer-1109" {
  source              = "./modules/loadbalancer-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location
 
  linux_vm_nic_ids        = module.vmlinux-1109.vmlinux-nic-ids
  linux_vm_name           = module.vmlinux-1109.vmlinux.hostnames
  common_tags = local.common_tags
}

module "database-1109" {
  source                       = "./modules/database-1109"
  
  resource_group_name = module.rgroup-1109.resource_group_name
  location = module.rgroup-1109.location

  common_tags = local.common_tags
}

