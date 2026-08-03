// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterAdmatic",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterAdmatic",
            targets: ["AMRAdapterAdmatic"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.25"),
        .package(url: "https://github.com/prebid/prebid-mobile-ios.git", .exact("3.3.0"))
    ],
    targets: [
        .target(
            name: "AMRAdapterAdmatic",
            dependencies: [
                "AMRAdapterAdmaticLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK"),
                .product(name: "PrebidMobile", package: "prebid-mobile-ios")
            ],
            path: "AMRAdapterAdmatic",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterAdmaticLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMATIC/releases/download/3.3.0/AMRAdapterAdmatic.xcframework.zip",
            checksum: "30d36842f619bb704379326b8ccabb93227dd8dee161c55662364eaa0aae529a"
        )
    ]
)
