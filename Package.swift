// swift-tools-version:5.3

import PackageDescription

let sdkName = "Bandyer"
let sdkVersion = "3.7.1"
let sdkChecksum = "61c693463ebbb5af6bd3c6ad58386baf9131528477d530ecc868b6f3a8691caa"

let rtcName = "WebRTC"
let rtcVersion = "100.2.36026"
let rtcChecksum = "ebfd70982677c71f3ac46f721d0566b5f41d7d6619f29818c7e049e8768f83c1"

let package = Package(
    name: "Bandyer",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "Bandyer",
            targets: ["Bandyer", "WebRTC"])
    ],
    targets: [
        .binaryTarget(
            name: sdkName,
            url: "https://static.bandyer.com/corporate/iOS/releases/sdk/\(sdkVersion)/standalone/Bandyer.xcframework.zip",
            checksum: sdkChecksum),
        .binaryTarget(
            name: rtcName,
            url: "https://static.bandyer.com/corporate/iOS/releases/webrtc/\(rtcVersion)/WebRTC.xcframework.zip",
            checksum: rtcChecksum)
    ]
)
