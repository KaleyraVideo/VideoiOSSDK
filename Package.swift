// swift-tools-version:5.3

import PackageDescription

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
            name: "Bandyer",
            url: "https://static.bandyer.com/corporate/iOS/releases/sdk/3.7.0/standalone/Bandyer.xcframework.zip",
            checksum: "b837c136a897e7590b765d07b80b672546d26e72973510ba9013bb988a9ad4bd"),
        .binaryTarget(
            name: "WebRTC",
            url: "https://static.bandyer.com/corporate/iOS/releases/webrtc/100.2.36026/WebRTC.xcframework.zip",
            checksum: "ebfd70982677c71f3ac46f721d0566b5f41d7d6619f29818c7e049e8768f83c1")
    ]
)
