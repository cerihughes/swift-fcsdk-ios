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
        .binaryTarget(name: "FCSDKiOS", url: "https://www.dropbox.com/scl/fi/p0k2xpdyqzx282efw9vjc/FCSDKiOS-4.2.5-Xcode14_3_1-M1-iOS11_built_against_iOS13-1.xcframework.zip?rlkey=z5ovga4v8h3yzohaekvsl3htf&dl=1", checksum: "99210148fc26467559da0eb1d060fb2e517ad55f77e80a7291b90d9bb54a4c91"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m110.xcframework.zip", checksum: "2750cf1087b2441d67208ca2b0905578b4ad1797a68d2d2758d0f075500f0011")
    ]
)
