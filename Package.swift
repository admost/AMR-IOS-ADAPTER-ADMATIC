// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AMRAdapterAdmatic",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMRAdapterAdmatic",
            targets: ["AMRAdapterAdmatic"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.25"),
        .package(url: "https://github.com/prebid/prebid-mobile-ios.git", .exact("3.4.1"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMATIC/releases/download/3.4.1/AMRAdapterAdmatic.xcframework.zip",
            checksum: "71d9ceb5b7b24d7ea2417eaf729024060ccf642688a899c2685cd77355b8fd32"
        )
    ]
)
