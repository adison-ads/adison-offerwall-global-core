// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.28.4"
let checksum = "3a12547fe21376526a0e253201cb594446bd1ea750e320e41b9d54d388fdcf8d"

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
        .package(url: "https://github.com/adison-ads/adison-offerwall-common", exact: "0.9.4")
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
                .product(name: "AdisonOfferwallCommon", package: "adison-offerwall-common")
            ],
            path: "Sources"
        )
    ]
)
