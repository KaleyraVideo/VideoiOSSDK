// swift-tools-version:5.3

import PackageDescription

let sdkName = "Bandyer"
let sdkVersion = "3.10.1"
let sdkChecksum = "2cda4929eff5f5869bad21cc3c539a468b688d02b1e35f2e9de775dbf39be9b9"

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
