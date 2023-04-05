
resource "jenkins_folder" "foldersr" {
  count = length(var.folders)
  name  = element(var.folders, count.index)
}

resource "jenkins_job" "example" {
  depends_on = [jenkins_folder.foldersr]
  count      = length(var.jobs)
  name       = lookup(element(var.jobs, count.index), "name", null)
  folder     = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.module}/sn-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
  })
  lifecycle {
    ignore_changes = [template]
  }
}

