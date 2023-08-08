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
        .binaryTarget(name: "FCSDKiOS", url: "https://www.dropbox.com/scl/fi/uhinc3doyeo389aiyjb2v/FCSDKiOS-4.2.5-Xcode4_2-Intel-iOS11-1.xcframework.zip?rlkey=929t0zvykxx1db3mgky0pupok&dl=1", checksum: "8e93fe513804cb1cdc2a5e191cb166d0fbab3eb3fe2b2d7876f9cb7180a5bfa8"),
//        .binaryTarget(name: "FCSDKiOS", url: "https://www.dropbox.com/scl/fi/krfris76fglgskndplv7f/FCSDKiOS-4.2.5-Xcode14_3_1-M1-iOS11-1.xcframework.zip?rlkey=moyvb1h1mywwpapq2tkn23xt5&dl=1", checksum: "e6583f4393071cbdc596219336f4988e721e92007a0a33e348ce1fcc8a51021f"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m110.xcframework.zip", checksum: "2750cf1087b2441d67208ca2b0905578b4ad1797a68d2d2758d0f075500f0011")
    ]
)
