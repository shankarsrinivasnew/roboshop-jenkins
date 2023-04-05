data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins_user"
}

data "aws_ssm_parameter" "jenkins_pass" {
  name = "jenkins_pass"
}