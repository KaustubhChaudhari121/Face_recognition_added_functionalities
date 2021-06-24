provider "aws"{
    region = "ap-south-1"
    profile = "default"
}
resource "aws_instance" "Terraform_OS"{
    ami = "ami-06a0b4e3b7eb7a300"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    tags = {
        Name = "Terraform_instance"
    }
}

resource "aws_ebs_volume" "Ebs_Vols"{
    count = 5
    availability_zone = "ap-south-1a"
    size = 1
    tags = {
        Name = "Volume"
    }

}