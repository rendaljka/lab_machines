# META
variable "vm_description" {
  type    = string
  default = "centos-stream-8-headless"
}

variable "vm_name" {
  type    = string
  default = "centos-stream-8"
}

variable "vm_version" {
  type    = string
  default = ""
}

# SSH
variable "ssh_username" {
  type    = string
  default = "rendaljka"
}

variable "ssh_password" {
  type    = string
  default = "rendaljka123"
}

# OS

variable "guest_os_type" {
  type    = string
  default = "RedHat_64"
}

variable "iso_url" {
  type    = string
  default = "http://linux.darkpenguin.net/distros/CentOS/8-stream/isos/x86_64/CentOS-Stream-8-x86_64-latest-boot.iso"
}

variable "iso_checksum" {
  type    = string
  default = "305e422c6218f4630c47da0feaf91a794dad468f6e2224ef7c40b1f63fcc020c"
}

# Machine parameters

variable "disk_size" {
  #it's in MB
  default = 80000
}

variable "cpus" {
  default = 4
}
variable "memory" {
  default = 5792
}

