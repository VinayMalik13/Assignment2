resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "/bin/bash /Users/vinaymalik/automation/AutomationProject/ansible/runansible.sh"
  }
  depends_on = [
    module.rgroup-1109,
    module.datadisk-1109,
    module.vmlinux-1109
  ]
}