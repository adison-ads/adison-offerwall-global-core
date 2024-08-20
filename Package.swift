// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.27.0"
let checksum = "aacd210da3a55bcb0e1ecb89278ccc1606826ef2b59932c3d826f2531e2a5206"

let package = Package(
    name: "AdisonOfferwallGlobalCore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalCore",
            targets: ["AdisonOfferwallGlobalCore"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "AdisonOfferwallGlobalCore",
            url: """
            https://github.com/adison-ads/adison-offerwall-global-core/releases/download/\(version)/\
            AdisonOfferwallGlobalCore.zip
            """,
            checksum: checksum
        )
    ]
)
