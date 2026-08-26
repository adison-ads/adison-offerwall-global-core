// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.0"
let checksum = "953e36ed27167869e7bf761c15ca248273df25ef3be462740cef425ceb5e47f5"
let modelVersion = "1.3.0"

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
