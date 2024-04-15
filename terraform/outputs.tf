
output "Resourse_Group_Name" {
  value = module.rgroup-1109.resource_group_name
}

output "location" {
  value = module.rgroup-1109.location
}


output "virtual_network_name" {
  value = module.network-1109.vnet_name
}

output "subnet_name" {
  value = module.network-1109.subnet_name
}

output "subnet_id" {
  value = module.network-1109.subnet_id
}


output "log_analytics_workspace_name" {
  value = module.common-1109.log_analytics_workspace_name
}


output "recovery_services_vault_name" {
  value = module.common-1109.recovery_services_vault_name
}


output "storage_account_name" {
  value = module.common-1109.storage_account_name
}


output "storage_account-primary_blob_endpoint" {
  value = module.common-1109.storage_account-primary_blob_endpoint
}


output "datadisk_name" {
  value = module.datadisk-1109.datadisk_name
}

output "vmlinux-hostname" {
  value = module.vmlinux-1109.vmlinux
}


output "vmlinux-fqdn" {
  value = module.vmlinux-1109.vmlinux-fqdn
}


output "vmlinux-private-ip" {
  value = module.vmlinux-1109.vmlinux-private-ip
}


output "vmlinux-public-ip" {
  value = module.vmlinux-1109.vmlinux-public-ip
}


output "vmlinux-nic-ids" {
  value = module.vmlinux-1109.vmlinux-nic-ids
}


output "vmwindows-hostname" {
  value = module.vmwindows-1109.windows
}


output "vmwindows-fqdn" {
  value = module.vmwindows-1109.windows_vm_fqdn
}


output "vmwindows-private-ip" {
  value = module.vmwindows-1109.windows_private_ip_address
}


output "vmwindows-public-ip" {
  value = module.vmwindows-1109.windows_public_ip_address
}


output "vmwindows-nic-ids" {
  value = module.vmwindows-1109.windows_nic_id
}


output "loadbalancer-public-ip" {
  value = module.loadbalancer-1109.loadbalancer-public-ip
}


output "loadbalancer-name" {
  value = module.loadbalancer-1109.loadbalancer-name
}



output "database_instance_name" {
  value = module.database-1109.database_instance_name
}

