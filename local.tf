locals {
  timestamp = "${replace("${timestamp()}", "-", "")}"
}