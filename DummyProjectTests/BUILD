load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

# test_host = "//DummyProject",

swift_library(
  name = "DummyProjectTestsLib",
  srcs = glob(["*.swift"]),
  deps = ["//DummyProject:AppMainLib"],
)

ios_unit_test(
  name = "DummyProjectTests",
  minimum_os_version = "10.0",
  deps = ["DummyProjectTestsLib"],
)