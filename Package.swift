// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IGListKit_AdmicroAdsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Wrapper product – consumer chỉ cần add package này,
        // tất cả transitive deps (IGListKit, IGListDiffKit, AdmicroAdsSDK) được tự động resolve
        .library(
            name: "IGListKit_AdmicroAdsSDK",
            targets: ["IGListKit_AdmicroAdsSDK_Wrapper"]
        ),
    ],
    dependencies: [
        // IGListKit chính thức từ Instagram (cung cấp IGListKit + IGListDiffKit)
        .package(url: "https://github.com/Instagram/IGListKit", from: "5.0.0"),
        // AdmicroAdsSDK
        .package(url: "https://github.com/CanThaiLinh/AdmicroAdsSDK.git", exact: "2.1.26")
    ],
    targets: [
        // STATIC xcframework từ release 1.1.14 – không có @rpath dependency → SPM compatible
        .binaryTarget(
            name: "IGListKit_AdmicroAdsSDK_Binary",
            url: "https://github.com/CanThaiLinh/IGListKit_AdmicroAdsSDK/releases/download/1.1.14/IGListKit_AdmicroAdsSDK_V2.zip",
            checksum: "0a9a69f83213d54623184a8c7092c7668e337f22e63b83bb15dd40518733d891"
        ),
        // Wrapper target: kéo binary + tất cả dynamic deps vào cùng 1 target
        // SPM sẽ link IGListKit/IGListDiffKit statically vào consumer app
        .target(
            name: "IGListKit_AdmicroAdsSDK_Wrapper",
            dependencies: [
                "IGListKit_AdmicroAdsSDK_Binary",
                .product(name: "IGListKit",     package: "IGListKit"),
                .product(name: "IGListDiffKit", package: "IGListKit"),
                .product(name: "AdmicroAdsSDK", package: "AdmicroAdsSDK"),
            ],
            path: "Sources/IGListKit_AdmicroAdsSDK_Wrapper"
        )
    ]
)
