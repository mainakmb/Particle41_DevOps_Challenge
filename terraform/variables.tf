variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

variable "public_subnet" {
    type = list(string)
    default = ["10.0.1.0/24","10.0.2.0/24"]
    description = "public subnet"
}

variable "private_subnet" {
    type = list(string)
    default = ["10.0.3.0/24","10.0.4.0/24"]
    description = "private subnet"
}

variable "azs" {
    type = list(string)
    description = "Availability Zones"
    default = [ "us-east-1a", "us-east-1b"] 
}