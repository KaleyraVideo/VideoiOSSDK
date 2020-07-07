<p align="center">
	<img src="img/Bandyer-logotype-white-1024x500.png" alt="Bandyer" title="Bandyer" />
</p>

[![Cocoapods compatible](https://img.shields.io/cocoapods/v/Bandyer)](https://cocoapods.org/pods/Bandyer)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Docs](https://img.shields.io/badge/docs-current-brightgreen.svg)](https://docs.bandyer.com/Bandyer-iOS-SDK/BandyerSDK/1.3.0/index.html)
[![Twitter](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&logo=twitter)](https://twitter.com/intent/follow?screen_name=bandyersrl)

Bandyer is an in-cloud collaborative solution for corporates, featuring a rich set of tools for enabling videoconferencing in your product. The BandyerSDK for iOS makes it easy to embed one to one, many to many high-quality voice and video calls into your mobile app, with a seamless integration with the iOS operating system. It features a fully fledged set of collaborative tools comprehensive of messaging, screen sharing, remote snapshot, collaborative interactive board and call recording capabilities. 

## Contents

- [Features](#features)
- [Latest version](#latest-version)
- [Installation](#installation)
- [Getting started](#getting-started)
- [Documentation](#documentation)
- [Sample apps](#sample-apps)
- [Looking for other platforms?](#looking-for-other-platforms)
- [Support](#support)
- [Credits](#credits)

## Features

- Video and voice calls
- Voice calls upgradable to video calls
- Call from URL
- Call recording
- Chat
- Seamless integration with CallKit
- Interactive collaborative space
- Remote camera snapshot
- Ready to use UI
- In-app notification banner
- In-app call banner

## Latest version

BandyerSDK 1.3.0 version is our latest version. This release changes the module name, so if you have integrated one of the old SDK framework version, we strongly advise you to visit the [release notes](https://github.com/Bandyer/Bandyer-iOS-SDK/releases/tag/1.3.0) page and the related [migration guide](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/MigrationGuide-from-1.2.2-to-1.3.0). 
If you have already integrated the BandyerSDK with any version below 1.2.0 in your app already, you should also take a look at our [migration guide](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/MigrationGuide-from-1.1.1-to-1.2.0).

## Installation

Several installation methods are supported. [CocoaPods][cocoapods] is the most straightforward way to add the SDK to your project. If you're new to CocoaPods, the website contains lots of helpful [documentation][cocoapods-getting-started].

### Cocoapods

[CocoaPods][cocoapods] is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate the SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!

target '<YOUR_TARGET_NAME>' do
    pod 'Bandyer'
end
```

Replace '\<YOUR\_TARGET\_NAME\>' with the name of your App target and then, in the Podfile directory, run the following command:

```bash
$ pod install
```

## Getting started

To begin making calls to the Bandyer platform, you need first to obtain credentials for your app. In order to do so, you must contact our sales department. Head over to our [website](https://www.bandyer.com) or contact us at [info@bandyer.com](mailto:info@bandyer.com) to get your credentials. Once you obtained your credentials head over to our [wiki page](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki) where you'll find a comprehensive set of guides that will help you integrate the BandyerSDK in your iOS app. 

Here's a list of the guides you'll find in our wiki:

### Introduction
[Home](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki)

### Getting started
[Get your credentials](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Get-your-credentials)

[Requirements](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Requirements)

[Installation](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Installation)

[Device permissions](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Device-Permissions)

[Basic integration](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Getting-Started)

### Making and receiving calls
[Call client lifecycle](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Call-client-lifecycle)

[Making an outgoing call](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Making-an-outgoing-call)

[Receiving an incoming call](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Receiving-an-incoming-call)

### Advanced topics
[Customizing user information](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Customizing-user-information) 

[CallKit](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/CallKit)

[VoIP notifications](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/VOIP-notifications)

[Call from URL](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Call-from-URL)

### Migration guides
[Migrating from 1.1.x to 1.2.0](https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/MigrationGuide-from-1.1.1-to-1.2.0)

## Documentation

You can find the complete documentation [here][documentation]

## Sample apps

You can find several sample apps showing you the BandyerSDK capabilities and features at the links below:

- [Objective-C samples][objective-c-samples]
- [Swift samples][swift-samples]

## Looking for other platforms?

If you're looking for the Android platform head over to our [Android repository][android] to get the latest SDK version. We also ship a Cordova plugin for Hybrid applications, head over to our [Cordova repository][cordova] to get our latest plugin version. 

## Support

To get basic support please submit an [Issue][issues]

If you prefer commercial support, please contact [bandyer.com][bandyer-website] sending an email at: [info@bandyer.com](mailto:info@bandyer.com.).

## Credits

- [WebRTC](https://webrtc.org/)
- [Socket.IO-Client-Swift](https://github.com/socketio/socket.io-client-swift)
- [Starscream](https://github.com/daltoniam/starscream)
- [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack)

[cocoapods]: https://cocoapods.org/
[cocoapods-getting-started]: https://guides.cocoapods.org/using/getting-started.html
[bandyer-website]: https://www.bandyer.com
[wiki]: https://github.com/Bandyer/Bandyer-iOS-SDK/wiki
[documentation]: https://docs.bandyer.com/Bandyer-iOS-SDK/BandyerSDK/latest/index.html
[objective-c-samples]: https://github.com/Bandyer/Bandyer-iOS-SDK-Samples
[swift-samples]: https://github.com/Bandyer/Bandyer-iOS-SDK-Samples-Swift
[android]: https://github.com/Bandyer/Bandyer-Android-SDK
[cordova]: https://github.com/Bandyer/Bandyer-Cordova-Plugin
[issues]: https://github.com/Bandyer/Bandyer-iOS-SDK/issues
