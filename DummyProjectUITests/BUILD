load("@build_bazel_rules_apple//apple:ios.bzl", "ios_ui_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

# test_host = "//DummyProject",

swift_library(
  name = "DummyProjectUITestsLib",
  srcs = glob(["*.swift"]),
)

ios_ui_test(
  name = "DummyProjectUITests",
  minimum_os_version = "10.0",
  deps = [":DummyProjectUITestsLib"],
  test_host = "//DummyProject",
)