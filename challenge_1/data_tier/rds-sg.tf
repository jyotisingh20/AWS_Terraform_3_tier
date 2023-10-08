resource "aws_security_group" "db" {
    name ="db-sg"
    vpc_id = aws_vpc.vpc.id

    # to  acces from anywhere
    ingress {
        from_port = 33306
        to_port =3306
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port =0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}