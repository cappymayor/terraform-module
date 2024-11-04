variable "db_identifier" {
  description = "Database identifier on the AWS RDS console."
}

variable "allocated_storage" {
  default     = 20
  description = "The minimum storageto be allocated to the DB instance."
}

variable "max_allocated_storage" {
  default = 0
  description = "The maximum storage the DB can autoscale upto."
}

variable "database_name" {
  description = "The database name that will be used during connection."
}

variable "db_instance_class" {
  default = "db.t3.micro"
  description = "The instance class where the DB engine will run."
}

variable "db_root_username" {
    description = "The Root Username to connect to the Database."
}
variable "db_root_password" {
    description = "The Root Password to connect to the Database."
}

variable "apply_immediately" {
  default = false
  description = "Apply any modification made to the Database instance immediately or wait during maintenance window."
}

variable "publicly_accessible" {
  default = false
  description = "Whether to allow public communication from outside the internet."
}

variable "db_subnet_group_name" {
  description = "The subnet group the DB instance will be created into."
}

variable "security_group_ids" {
  description = "List of security group to be attached to the DB instance."
}

variable "deletion_protection" {
  default = false
  description = "Protect the DB instance from being deleted."
}