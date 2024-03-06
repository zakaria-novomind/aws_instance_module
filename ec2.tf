resource "aws_instance" "server" {
  count = var.number_of_servers

  ami                    = var.instance_ami[count.index]
  instance_type          = var.instance_type[count.index]
  subnet_id              = var.subnet_id[count.index]
  key_name               = var.key_pair_id[count.index]
  vpc_security_group_ids = [var.sg_id[count.index]]

  user_data = (length(var.user_data) == var.number_of_servers) ? "<<-EOF  ${var.user_data[count.index]}EOF" : ""
  tags = {
    Name = var.instance_name[count.index]

  }

}

