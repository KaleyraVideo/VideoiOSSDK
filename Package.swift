// swift-tools-version:5.7

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "4.3.0"
let sdkChecksum = "86790c51dcf0bb715512242b5a404a2d8edc54ad185ac0dd28c618a57fe5b9a3"

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
