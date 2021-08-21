module "ghost" {
source = "C:/Users/Dell/Desktop/DevOps_Assignments Navya Datla/Terraform Assignment/Terraform_assignment_4/Ghost_Module"
image_name = "${var.image_name}" 
container_name = "${var.container_name}" 
ext_port = "${var.ext_port}"
}

