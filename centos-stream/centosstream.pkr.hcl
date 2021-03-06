packer {
  required_plugins {
    virtualbox = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

build {
  name = "${var.vm_name}"
  sources = [
    "source.virtualbox-ovf.centos-stream-8"
  ]

  provisioner "shell" {
    scripts = [
      "scripts/yum_setup.sh",
      "${var.container_runtime_provision_script}",
      "scripts/kubernetes.sh"
    ]
  }

}