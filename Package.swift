// swift-tools-version:5.3

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "4.0.0-alpha.1"
let sdkChecksum = "83c6dc38f30c0f19b9955f6324e36e89d56454996378acd1d6667975a1a609b4"

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
