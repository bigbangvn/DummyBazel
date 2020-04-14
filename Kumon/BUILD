load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@rules_cc//cc:defs.bzl", "objc_library")

load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("//rules:swift_static_framework.bzl", "swift_static_framework")

swift_static_framework(
  name = "Kumon",
  module_name = "Kumon",
  srcs = glob(["*.swift"]),
)