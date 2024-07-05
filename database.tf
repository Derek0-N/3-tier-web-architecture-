# database.tf
resource "aws_db_instance" "db" {
  identifier              = "my-db-instance"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"  # This will use the latest supported 8.0.x version
  instance_class          = "db.t3.micro"  # Changed from db.t2.micro to db.t3.micro
  db_name                 = "mydatabase"
  username                = "admin"
  password                = "password"  # Remember to change this to a secure password
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.db_sg.id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = false  # Multi-AZ is not covered by Free Tier

  tags = {
    Name = "db-instance"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = aws_subnet.private_db[*].id

  tags = {
    Name = "db-subnet-group"
  }
}
