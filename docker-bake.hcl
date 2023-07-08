group default {
  targets = ["82", "81"]
}

target "82" {
  dockerfile = "alpine/3.17/8.2/Dockerfile"
  args = {
    PHP_PECL_EXTENSIONS = "apcu redis opentelemetry"
  }
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["spryker-php-otel:8.2"]
  output = ["build"]
}

target "81" {
  dockerfile = "alpine/3.17/8.1/Dockerfile"
  args = {
    PHP_PECL_EXTENSIONS = "apcu redis opentelemetry"
  }
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["spryker-php-otel:8.1"]
  output = ["build"]
}
