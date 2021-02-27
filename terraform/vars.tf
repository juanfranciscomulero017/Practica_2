variable "location" {
  type = string
  description = "Región de azure para la infraestructura"
  default = "Central US"
}

variable "vm_sizeB2s" {
  type = string
  description = "recursos del master"
  default = "Standard_B2s"
}

variable "vmsB2s" {
  description = "Maquinas virtuales"
  type = list(string)
  default = ["kubemaster01"]
}

variable "vm_sizeBD1_v2" {
  type = string
  description = "recursos para los workers y nfs"
  default = "Standard_DS1_v2"
}

variable "vmsBD1_v2" {
  description = "Maquinas virtuales"
  type = list(string)
  default = ["kubeworker01","kubeworker02","nfsserver01"]
}