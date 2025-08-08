// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.0"
let checksum = "39acc3d55e9bec1f48d812b22cdcf40891da16a736a92a301d768dd1a315d1ce"
let modelVersion = "1.0.2"

let package = Package(
    name: "AdisonOfferwallGlobalCore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalCore",
            targets: ["AdisonOfferwallGlobalCore", "AdisonOfferwallGlobalCoreTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-model", exact: Version(stringLiteral: modelVersion))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "AdisonOfferwallGlobalCore",
            url: "https://github.com/adison-ads/adison-offerwall-global-core/releases/download/\(version)/AdisonOfferwallGlobalCore.zip",
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallGlobalCoreTarget",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalModel", package: "adison-offerwall-global-model")
            ],
            path: "Sources"
        )
    ]
)
