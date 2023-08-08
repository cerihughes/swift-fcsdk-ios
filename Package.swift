// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-fcsdk-ios",
    platforms: [.iOS(.v13)],
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
        .binaryTarget(name: "FCSDKiOS", url: "https://www.dropbox.com/scl/fi/o7mzhv0dh7khszkqbtlkd/FCSDKiOS-4.2.5-Xcode14_3_1-M1-iOS13-1.xcframework.zip?rlkey=r5j8xvo1pzzd1fkv4mpx8m6sz&dl=1", checksum: "ab0ac1d158dcedeaa799d99b45fb6d6d43b44f0a7258d5c4d45885d4901b123f"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m110.xcframework.zip", checksum: "2750cf1087b2441d67208ca2b0905578b4ad1797a68d2d2758d0f075500f0011")
    ]
)
