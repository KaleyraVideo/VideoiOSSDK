// swift-tools-version:5.7

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "4.3.1"
let sdkChecksum = "e5c4a326f013e744b8d51a5591f62f1a613274e98d08acd417eabd241e98ceb2"

let rtcName = "WebRTC"
let rtcVersion: Version = "124.0.0"
let rtcChecksum = "2e9f011ed68781ec238c73b5515eaae4d5b33b4d92f60940c9abe72759cfc646"

let package = Package(
    name: sdkName,
    platforms: [
        .iOS(.v15)
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
            url: "https://github.com/KaleyraVideo/WebRTC/releases/download/\(rtcVersion)/WebRTC-M\(rtcVersion.major).xcframework.zip",
            checksum: rtcChecksum)
    ]
)
