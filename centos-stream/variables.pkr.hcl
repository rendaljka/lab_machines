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
  default = "root"
}

variable "ssh_password" {
  type    = string
  default = "rendaljka1234"
}

variable "ssh_timeout" {
  type    = string
  default = "10m"
}

# OS

variable "source_path" {
  type    = string
  default = "./centos-stream-8-server.ova"
}

variable "checksum" {
  type    = string
  default = "28e5333d0739f8e6f7c3299fe54e582f522c92ee"
}

# Machine parameters

variable "cpus" {
  default = 3
}
variable "memory" {
  default = 3000
}

