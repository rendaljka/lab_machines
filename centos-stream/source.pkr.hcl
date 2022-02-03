
source "virtualbox-ovf" "centos-stream-8" {
  vm_name          = "${var.vm_name}"
  source_path      = "${var.source_path}"
  checksum         = "${var.checksum}"
  ssh_username     = "${var.ssh_username}"
  ssh_password     = "${var.ssh_password}"
  ssh_timeout      = "${var.ssh_timeout}"
  communicator     = "ssh"
  http_directory   = "http"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"

  vboxmanage = [
    ["modifyvm", "{{.Name}}", "--memory", "${var.memory}"],
    ["modifyvm", "{{.Name}}", "--cpus", "${var.cpus}"],
  ]

  headless = "false"


  export_opts = [
    "--manifest",
    "--vsys", "0",
    "--description", "${var.vm_description}",
    "--version", "${var.vm_version}"
  ]
  format = "ova"
}