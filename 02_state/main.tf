# resource "local_file" "example1" {
#   content  = "this is demo content - 1"
#   filename = "${path.module}/example1"
# }

# resource "local_file" "example2" {
#   content  = "this is demo content - 2"
#   filename = "${path.module}/example2"
# }

resource "local_sensitive_file" "tf_sensitive" {
  content  = "Ika123!"
  filename = "${path.module}/sensitive.txt"
}