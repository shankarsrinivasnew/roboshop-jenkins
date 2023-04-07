data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins_user"
}

data "aws_ssm_parameter" "jenkins_pass" {
  name = "jenkins_pass"
}

data "aws_instance" "jenkins" {
  instance_id = "i-0ef280f85b788faab"
}