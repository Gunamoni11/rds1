provider "aws" {
    region = "us-east-2"
}

#creating RDS My SQL DB
resource "aws_db_instance" "default" {
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    name = "mydb"
    username = "tstdb01"
    password = "tsdb012345"
    allocated_storage = 20
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
}
