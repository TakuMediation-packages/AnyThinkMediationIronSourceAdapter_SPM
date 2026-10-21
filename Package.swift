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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkIronSourceAdapter/9.3.0.0.2.9/AnyThinkIronSourceAdapter-9.3.0.0.2.9.zip",
            checksum: "5247d85e036382baf1780c107138f5d00ab1a8f53c102515a2fea47de8413b9b"
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
