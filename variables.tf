variable "instance_name" {
  type = list(string)
}
variable "user_data" {
  type    = list(string)
  default = []


}
variable "instance_ami" {
  type = list(string)
}
variable "instance_type" {
  type = list(string)
}
variable "subnet_id" {
  type = list(string)
}
variable "key_pair_id" {
  type = list(string)
}
variable "sg_ids" {
  type = list(list(string))
}
variable "number_of_servers" {
  type = number
}
