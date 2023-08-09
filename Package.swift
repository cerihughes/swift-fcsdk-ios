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
        .binaryTarget(name: "FCSDKiOS", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/client_sdk/FCSDKiOS-4.2.5-ios-13-min.xcframework.zip", checksum: "669db22d972204ab55dece8b569615660d9277a86403fc6266023ac17e506035"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m110.xcframework.zip", checksum: "2750cf1087b2441d67208ca2b0905578b4ad1797a68d2d2758d0f075500f0011")
    ]
)
