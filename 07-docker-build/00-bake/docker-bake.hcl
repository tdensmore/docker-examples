group "default" {
  targets = ["hello-go"]
}

target "hello-go" {
  tags = ["todddensmore978/hello-go"]
  platforms = ["linux/amd64", "linux/arm64"]
}