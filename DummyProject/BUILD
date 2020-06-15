load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
  name = "AppMainLib",
  srcs = glob(["*.swift"]),
  data = ["Base.lproj/Main.storyboard"],
  visibility = ["//visibility:public"],
  deps = ["//Kumon"],
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
    minimum_os_version = "10.0",
    visibility = ["//visibility:public"],
    deps = [":AppMainLib"],
)


# Copy from Tailor

load(
    "@xchammer_resources//:xchammerconfig.bzl",
    "project_config",
)

load("@xchammer_resources//:xcodeproject.bzl", "xcode_project")
xcode_project(
    name = "XcodeBazel",
    targets = [
	"//:DummyProject",
    ],
    bazel = "tools/bazelwrapper",
    xchammer = "tools/xchammer.app",
    project_config = project_config(
	build_bazel_platform_options = {
            "ios_x86_64": ["--config=ios_x86_64"],
            "ios_i386": ["--config=ios_i386"],
        },
	paths = ["**"],
	generate_xcode_schemes = True,
	generate_transitive_xcode_targets = True,
    ),
)
