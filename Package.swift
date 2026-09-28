// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationIronSourceAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationIronSourceAdapter",
            targets: ["AnyThinkMediationIronSourceAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git", exact: "9.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIronSourceAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkIronSourceAdapter/9.3.0.0.2.1/AnyThinkIronSourceAdapter-9.3.0.0.2.1.zip",
            checksum: "d7a5b6ee2cd056031affb33028b322069df70627ba41a7055aeff989f492f5bd"
        ),
        .target(
            name: "AnyThinkMediationIronSourceAdapterTarget",
            dependencies: [
                "AnyThinkIronSourceAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationIronSourceAdapterTarget"
        )
    ]
)
