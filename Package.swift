// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IGListKit_AdmicroAdsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IGListKit_AdmicroAdsSDK",
            targets: ["IGListKit_AdmicroAdsSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/CanThaiLinh/AdmicroAdsSDK.git", exact: "2.1.24")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "IGListKit_AdmicroAdsSDK",
            url: "https://github.com/CanThaiLinh/IGListKit_AdmicroAdsSDK/releases/download/1.1.12/IGListKit_AdmicroAdsSDK_1.1.12.zip",
            checksum: "ae9f96730f62e9dfad465997b8d6ecf7cd3533d91085d167e67eaa967155bab2"
        )
    ]
)
