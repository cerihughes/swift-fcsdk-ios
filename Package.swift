// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-fcsdk-ios",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FCSDKiOS",
            type: .static,
            targets: ["SwiftFCSDKiOS"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftFCSDKiOS",
            dependencies: [
                "FCSDKiOS",
                "WebRTC"
            ]),
        .binaryTarget(name: "FCSDKiOS", url: "https://www.dropbox.com/scl/fi/t6v07dy0cw1ji3jdaqs3c/FCSDKiOS-4.2.5-Xcode14_3_1-M1-iOS11-use-correct-cbats-branch.xcframework.zip?rlkey=a67ku4v0bf0fskh7vcskgfkks&dl=1", checksum: "a51a83519da038b326b591f4fd2b1e868b448b48fb7432240bb8c11fc394e66d"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m110.xcframework.zip", checksum: "2750cf1087b2441d67208ca2b0905578b4ad1797a68d2d2758d0f075500f0011")
    ]
)
