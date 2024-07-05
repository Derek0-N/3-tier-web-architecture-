# load-balancer.tf
resource "aws_elb" "web_elb" {
  name                        = "web-tier-elb"
  security_groups             = [aws_security_group.web_sg.id]
  subnets                     = aws_subnet.public[*].id
  cross_zone_load_balancing   = true

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "web-tier-elb"
  }
}
