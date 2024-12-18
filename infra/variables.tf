variable "ami" {
  default = "ami-0453ec754f44f9a4a"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "ssh_key_name" {
  type    = string
  default = "vockey"
}

variable "sg_map" {
  default = {
        "Jenkins_Master" = {
          extra_ports = [ 8080, 50000 ]
        },
        "Jenkins_Node_1" = {
            extra_ports = [ 50000 ]
        }
    }
}

variable "ec2_map" {
  default = {
        "Jenkins_Master" = {}
        "Jenkins_Node_1" = {}
    }
}

# sudo yum update -y
# sudo yum install docker -y
# sudo service docker start
# sudo usermod -a -G docker ec2-user
# newgrp docker
# sudo chmod 666 /var/run/docker.sock
