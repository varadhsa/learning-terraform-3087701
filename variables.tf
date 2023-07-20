variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI"
  
  type = object ({
    name  = string
    owner = string
  })

  default = {
    name  = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
    #values = ["hvm"]
    owner = ["979382823631"] # Bitnami
  }
}

variable "environment" {
  description = "development environment"

  type = object ({
    name            = string
    network_prefix  = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min_size" {
  description = "min number of instances in ASG"
  default = 1
}

variable "asg_max_size" {
  description = "max number of instances in ASG"
  default = 2
}
