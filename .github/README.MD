# Terraflops Terraform Module
 
### EC2 Instance

This module can be used to provision a new EC2 instance with an optional elastic IP
address.

#### Example usage

```hcl-terraform
module "example" {
  source = "git::https://github.com/TerraFlops/aws-ec2-instance?ref=v1.0"
  name = "ExampleInstance"
  description = "This is an example EC2 instance"
  ami_id = "ami-xxxxxxxxxxxxx"
  subnet_id = module.vpc_notifications.subnet_ids["compute_subnet_2a"]
  instance_type = "t3a.medium"
  iam_instance_profile = "ExampleIamInstanceProfile"
  key_name = "Example"
  elastic_ip = true
  private_ip = "10.0.50.172"
  security_group_ids = [
    module.vpc_notifications.security_group_ids["example"]
  ]
}
```
