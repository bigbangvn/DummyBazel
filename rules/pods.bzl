"""Definitions for handling Bazel repositories used by the Apple rules."""

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "new_git_repository",
)

def pods_dependencies():
    """Fetches repositories that are dependencies of the `rules_apple` workspace.
    """
    http_archive(
        name = "rules_pods",
        urls = ["https://github.com/mstoreytr/PodToBUILD/releases/download/0.25.5/PodToBUILD.zip"],
    )

    http_archive(
      name = "SnapKit",
      urls = ["https://github.com/SnapKit/SnapKit/archive/4.2.0.zip"],
      build_file = "@//src/dependencies/source:SnapKit.BUILD",
      sha256 = "9bd19d2638e525a902bf3324ae2f49210a3b62336c78fcb18e81c3ae4082fb9f",
      strip_prefix = "SnapKit-4.2.0",
    )

    http_archive(
        name = "RxSwift",
        urls = [ "https://github.com/ReactiveX/RxSwift/archive/4.5.0.zip" ],
        build_file = "@//src/dependencies/source:RxSwift.BUILD",
        strip_prefix = "RxSwift-4.5.0",
    )

    http_archive(
        name = "CryptoSwift",
        urls = [ "https://github.com/krzyzanowskim/CryptoSwift/archive/0.12.0.zip" ],
        build_file = "@//src/dependencies/source:CryptoSwift.BUILD",
        strip_prefix = "CryptoSwift-0.12.0",
    )

    http_archive(
        name = "JWTDecode",
        urls = [ "https://artifacts.gitlab.myteksi.net/artifactory/mobile--pax-ios--local/external/compiled/frameworks/swiftc_5.1.3/JWTDecode_dynamic_2.3.0.1583941184.zip" ],
        build_file = "@//src/dependencies/vendored:JWTDecode.BUILD",
        sha256 = "46b28d11523e511b1f36ed628dc8f0716f704344501165f0ebe578ffefbb53c5"
    )

    new_git_repository(
        name = "example_repository",
        remote = "https://github.com/example/repository.git",
        build_file = "@//src/dependencies/vendored:JWTDecode.BUILD",
    )

    new_git_repository(
        name = "HellfireStaging",
        remote = "git@gitlab.myteksi.net:mobile/hellfire-ios-framework.git",
        tag = "1.4.1",
        build_file = "@//src/dependencies/vendored:Hellfire.BUILD",
    )

    new_git_repository(
        name = "HellfireProduction",
        remote = "git@gitlab.myteksi.net:mobile/hellfire-ios-framework.git",
        tag = "1.4.1",
        build_file = "@//src/dependencies/vendored:Hellfire.BUILD",
    )
