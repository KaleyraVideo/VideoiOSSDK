// swift-tools-version:5.7

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "4.6.0"
let sdkChecksum = "937fcd42023d59315e6aa21b4d6b88368ef57e9dbf29ac4a7a960ff41da033a0"

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
