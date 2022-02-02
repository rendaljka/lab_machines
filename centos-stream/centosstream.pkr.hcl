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
    "source.virtualbox-iso.centos-stream-8"
  ]

  provisioner "shell" {
    inline = ["sudo yum update"]
  }

  provisioner "shell" {
    scripts = [
      "scripts/cri-o_install.sh",
      "scripts/kubernetes.sh"
    ]
  }

}