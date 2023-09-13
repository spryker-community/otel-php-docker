group default {
  targets = ["81", "82"]
}

target "image" {
  args = {
    PHP_PECL_EXTENSIONS = "apcu redis grpc protobuf opentelemetry"
  }
  platforms = ["linux/amd64", "linux/arm64"]
}

target "82" {
  inherits = ["image"]
  dockerfile = "alpine/3.18/8.2/Dockerfile"
  tags = ["bate/spryker-php-otel:8.2"]
}

target "81" {
  inherits = ["image"]
  dockerfile = "alpine/3.18/8.1/Dockerfile"
  tags = ["bate/spryker-php-otel:8.1"]
}
