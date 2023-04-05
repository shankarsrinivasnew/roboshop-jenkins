variable "folders" {
  default = ["infra"]
}

variable "jobs" {
  default = [
    { name = "roboshop", folder = "infra", repo_url = "https://github.com/shankarsrinivasnew/roboshop-infra" }
  ]

}
