// swift-tools-version:5.7

import PackageDescription

let sdkName = "KaleyraVideoSDK"
let sdkVersion = "4.2.0"
let sdkChecksum = "ee7722bb84a446e1b1f586d67be0199b91c9695973d53637e9b4321149cd5bfa"

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
