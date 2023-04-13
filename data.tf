data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins_user"
}

data "aws_ssm_parameter" "jenkins_pass" {
  name = "jenkins_pass"
}

data "aws_instance" "jenkins" {
  instance_id = "i-0ef280f85b788faab"
}

data "aws_instance" "sonarcube" {
  instance_id = "i-01c4bfbd3a6dbf32c"
}

data "aws_instance" "nexus" {
  instance_id = "i-0e6d8bcaa611bdb73"
}