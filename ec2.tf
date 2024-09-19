module "ec2" {
    source = "../terraform-aws-ec2"
    #here ami_id is the variable expected by module, not the arguments(left side - ami) of resource definition
    
    ami_id = var.ami_user
    
    instance_type_info = "t3.small"  #in terraform-aws-ec2 var, we provided t3.micro, but here in user module provided is t3.small hence it will be overrided with final value as "t3.small"
   
    #We can give values in 2 ways:
    # 1)by giving direct values here itself
    # 2)again using varialbes.tf, means we can mention var.var_name and this var_name we can define in its(ec2-module-demo) variable.tf
    
    security_group_id = ["sg-0d91387712ba38962"]

    tags_name = "terraform-ec2-module"
}