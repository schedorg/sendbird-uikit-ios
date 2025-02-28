// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SendBirdUIKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SendBirdUIKit",
            targets: ["SendBirdUIKit"]
        ),
    ],
    dependencies: [
        .package(
            name: "SendBirdSDK",
            url: "https://github.com/schedorg/sendbird-chat-ios-spm",
            from: "3.1.58"
        ),
    ],
    targets: [
        // .binaryTarget(
        //     name: "SendBirdUIKit",
        //     path: "Framework/SendBirdUIKit.xcframework"
        // ),
        .target(
            name: "SendBirdUIKit",
            dependencies: [
//                .target(name: "SendBirdUIKit"),
                .product(name: "SendBirdSDK", package: "SendBirdSDK")
            ],
            // path: "Framework/Dependency",
            // exclude: ["../../Sample", "../../Sources"]
            path: "Sources",
            exclude: ["SendBirdUIKit.h", "Info.plist"],
            resources: [.process("Resource/Assets.xcassets"), .process("View/Common/Menu/SBUMenuCell.xib"), .process("View/Channel/Reaction/SBUReactionCollectionViewCell.xib")]
        ),
    ]
)
