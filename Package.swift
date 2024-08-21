// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.27.0"
let checksum = "4e0843b932aa7a3eabab808d919e0bda9a730315b595a5647a08f3b0572c37a6"

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
