#Indicamos la gegión
variable "location" {
  type = string
  description = "Región de azure para la infraestructura"
  default = "Central US"
}

#Tipo de instancia para el master node
variable "vm_sizeB2s" {
  type = string
  description = "recursos del master"
  default = "Standard_B2s"
}

#Nombre de los master nodes
variable "vmsB2s" {
  description = "Maquinas virtuales"
  type = list(string)
  default = ["kubemaster01"]
}

#Tipo de instancia para los worker nodes y nfs nodes
variable "vm_sizeBD1_v2" {
  type = string
  description = "recursos para los workers y nfs"
  default = "Standard_DS1_v2"
}

#nombres para los worker nodes y nfs nodes
variable "vmsBD1_v2" {
  description = "Maquinas virtuales"
  type = list(string)
  default = ["kubeworker01","kubeworker02","nfsserver01"]
}
