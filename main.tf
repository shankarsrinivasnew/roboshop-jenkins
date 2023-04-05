
resource "jenkins_folder" "foldersr" {
  name = "infra"
}

resource "jenkins_job" "example" {
  name     = "roboshop"
  folder   = jenkins_folder.foldersr.index
  template = templatefile("${path.module}/sn-job.xml", {
    description = "An example job created from Terraform"
  })
}