// swift-tools-version:5.3

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "3.12.1"
let sdkChecksum = "a310a8abd01d1b6d35f35ef15b789b697395b29ebe8405d6f653bc45ba7d0d10"

let rtcName = "WebRTC"
let rtcChecksum = "2e9f011ed68781ec238c73b5515eaae4d5b33b4d92f60940c9abe72759cfc646"

let package = Package(
    name: sdkName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: sdkName,
            targets: [sdkName, rtcName])
    ],
    targets: [
        .binaryTarget(
            name: sdkName,
            url: "https://static.bandyer.com/corporate/iOS/releases/sdk/\(sdkVersion)/standalone/KaleyraVideoSDK.xcframework.zip",
            checksum: sdkChecksum),
        .binaryTarget(
            name: rtcName,
            url: "https://github.com/KaleyraVideo/WebRTC/releases/download/124.0.0/WebRTC-M124.xcframework.zip",
            checksum: rtcChecksum)
    ]
)
