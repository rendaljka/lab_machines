
source "virtualbox-iso" "centos-stream-8" {
  guest_os_type    = "${var.guest_os_type}"
  vm_name          = "${var.vm_name}"
  iso_url          = "${var.iso_url}"
  iso_checksum     = "${var.iso_checksum}"
  disk_size        = "${var.disk_size}"
  ssh_username     = "${var.ssh_username}"
  ssh_password     = "${var.ssh_password}"
  communicator     = "ssh"
  http_directory   = "http"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"

  vboxmanage = [
    ["modifyvm", "{{.Name}}", "--memory", "${var.cpus}"],
    ["modifyvm", "{{.Name}}", "--cpus", "${var.memory}"],
  ]

  headless = "true"

  boot_command = [
    "<tab><bs><bs><bs><bs><bs>inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ks.cfg<enter><wait>"
  ]

  export_opts = [
    "--manifest",
    "--vsys", "0",
    "--description", "${var.vm_description}",
    "--version", "${var.vm_version}"
  ]
  format = "ova"
}