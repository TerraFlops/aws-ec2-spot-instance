variable "name" {
  description = "Name of the instance"
  type = string
}

variable "description" {
  description = "Description of the instance"
  type = string
}
variable "ami_id" {
  description = "AMI image ID from which the instance will be created"
  type = string
}

variable "private_ip" {
  description = "Optional static private IP address to allocate to the instance. If not specified it will be given by DHCP"
  type = string
  default = null
}

variable "user_data" {
  description = "Optional commands to be added to the userdata script. These will be executed on every startup"
  type = string
  default = ""
}

variable "volume_size" {
  description = "Volume size"
  type = number
  default = 8
}

variable "volume_type" {
  description = "Volume type"
  type = string
  default = "gp2"
}

variable "subnet_id" {
  description = "The AWS subnet ID into which the instance will be launched"
  type = string
}

variable "security_group_ids" {
  description = "Set of AWS security group IDs that will be attached to the instance"
  type = set(string)
}

variable "authorized_keys" {
  description = "Optional authorized SSH keys file which will be injected into the bastion on startup"
  type = string
  default = null
}

variable "authorized_keys_home" {
  description = "Home folder in which SSH keys will be added"
  type = string
  default = "/home/ubuntu"
}

variable "instance_type" {
  description = "EC2 instance type to launch. Defaults to t3a.nano"
  type = string
  default = "t3a.nano"
}

variable "key_name" {
  description = "Optional EC2 key pair to associate with the instance"
  type = string
  default = null
}

variable "elastic_ip" {
  description = "Boolean flag, if true an Elastic IP will be allocated to the instance"
  type = bool
  default = false
}

variable "iam_instance_profile" {
  description = "Optional IAM instance profile name"
  type = string
  default = null
}

variable "monitoring" {
  description = "Enable detailed instance monitoring"
  type = bool
  default = true
}

variable "get_password_data" {
  description = "Boolean flag, if true when provisioning the instance the initial password will be retrieved from the instance. This cannot be changes to true after initial deployment as the password is no longer retrievable"
  type = bool
  default = false
}

variable "termination_protection" {
  description = "Boolean flag, if true will enable EC2 instance termination protection"
  type = bool
  default = false
}

variable "spot_price" {
  description = "The maximum price to request on the spot market."
  type = number
  default = null
}

variable "wait_for_fulfillment" {
  description = "If set, Terraform will wait for the Spot Request to be fulfilled, and will throw an error if the timeout of 10m is reached."
  default = null
}

variable "spot_type" {
  description = "If set to one-time, after the instance is terminated, the spot request will be closed."
  type = string
  default = "persistent"
}

variable "launch_group" {
  description = "A launch group is a group of spot instances that launch together and terminate together. If left empty instances are launched and terminated individually."
  type = string
  default = null
}

variable "block_duration_minutes" {
  description = "The required duration for the Spot instances, in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360)."
  type = number
  default = null
}

variable "instance_interruption_behaviour" {
  description = "Indicates whether a Spot instance stops or terminates when it is interrupted. Default is terminate as this is the current AWS behaviour."
  type = string
  default = "terminate"
}

variable "valid_until" {
  description = "The end date and time of the request, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  type = string
  default = null
}

variable "valid_from" {
  description = "The start date and time of the request, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  type = string
  default = null
}
