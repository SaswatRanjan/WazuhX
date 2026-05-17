provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "wazuh_lb" {
  name               = "wazuhx-loadbalancer"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-xxxx", "subnet-yyyy"]
}

resource "aws_autoscaling_group" "wazuh_cluster" {
  desired_capacity     = 3
  max_size             = 5
  min_size             = 2
  vpc_zone_identifier  = ["subnet-xxxx", "subnet-yyyy"]

  launch_template {
    id      = "lt-xxxx"
    version = "$Latest"
  }
}
