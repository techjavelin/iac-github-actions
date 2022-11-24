resource "null_resource" "simple-test" {
    lifecycle {
      precondition {
        condition = true
      }
    }
}