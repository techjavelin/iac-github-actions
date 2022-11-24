resource "null_resource" "simple-test" {
  provisioner "local-exec" {
    command = "echo test"
  }
}