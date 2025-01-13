// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.29.2"
let checksum = "bb0c448851be088914cd9bf872e0fa982d925da56ab9fca9e81b6066941d29ba"
let modelVersion = "0.9.2"

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
