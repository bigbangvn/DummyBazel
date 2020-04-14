load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
  name = "AppMainLib",
  srcs = glob(["*.swift"]),
  data = ["Base.lproj/Main.storyboard"],
)

ios_application(
    name = "DummyProject",
    bundle_id = "bang.example.ios-app",
    families = [
        "iphone",
        "ipad",
    ],
    launch_storyboard = "Base.lproj/LaunchScreen.storyboard",
    infoplists = [":Info.plist"],
    minimum_os_version = "13.0",
    visibility = ["//visibility:public"],
    deps = [":AppMainLib"],
)