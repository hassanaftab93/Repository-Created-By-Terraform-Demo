resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = data.aws_ec2_instance_type.type.instance_type
  key_name               = aws_key_pair.awskey.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]

  tags = {
    Name = "${var.awsInstanceName}"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/awskey")
    host        = self.public_ip
    agent       = true
  }

  # # Copy file to VM
  # provisioner "file" {
  #   when = create
  #   on_failure = fail
  #   destination = "~/user-data.sh"
  #   source      = "user-data.sh"
  # }

  # # Add executable rights
  # provisioner "local-exec" {
  #   when = create
  #   on_failure = fail
  #   command = "chmod +x ./user-data.sh"
  # }

  # # Execute file on VM
  # provisioner "local-exec" {
  #   when = create
  #   on_failure = fail
  #   command = "./user-data.sh"
  # }

  provisioner "remote-exec" {
    on_failure = fail
    when       = create
    script     = "./user-data.sh"
  }

}