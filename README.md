# Video iOS SDK

<p align="center">
	<img src="img/logo.png" alt="Kaleyra Logo" title="Kaleyra Video" />
</p>

[![Cocoapods compatible](https://img.shields.io/cocoapods/v/KaleyraVideoSDK)](https://cocoapods.org/pods/KaleyraVideoSDK)
[![Docs](https://img.shields.io/badge/docs-current-brightgreen.svg)](https://docs.bandyer.com/Bandyer-iOS-SDK/BandyerSDK/latest/index.html)
[![Twitter](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&logo=twitter)](https://twitter.com/Kaleyra_)

Kaleyra Video is an in-cloud collaborative solution for corporates, featuring a rich set of tools for enabling videoconferencing in your product. The Kaleyra Video SDK for iOS makes it easy to embed one to one, many to many high-quality voice and video calls into your mobile app, with a seamless integration with the iOS operating system. It features a fully fledged set of collaborative tools comprehensive of messaging, screen sharing, remote snapshot, collaborative interactive board and call recording capabilities. 

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
- Seamless integration with iOS call UI
- Interactive collaborative space
- Remote camera snapshot
- Ready to use UI
- In-app notifications
- In-app Screensharing
- Filesharing
- Screen device screensharing
- Picture in picture
- Live pointer
- Remote mute by admin
- Remote kick by admin
- Supported languages: English 🇬🇧, Italian 🇮🇹, Spanish 🇪🇸, Portuguese 🇵🇹

## Installation

Several installation methods are supported. [CocoaPods][cocoapods] and [Swift package manager][spm] are the most straightforward way to add the SDK to your project. If you're new to CocoaPods, their website contains lots of helpful [documentation][cocoapods-getting-started]. For futher information head over to our [installation guide][installation-guide].

### SPM

Starting from 3.7.0 version the SDK supports Swift package manager. 
In order to add the package to your app, select add package in Xcode and use this repository URL from the Xcode user interface

### Cocoapods

[CocoaPods][cocoapods] is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate the SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '15.0'
use_frameworks!

target '<YOUR_TARGET_NAME>' do
    pod 'KaleyraVideoSDK'
end
```

Replace '\<YOUR\_TARGET\_NAME\>' with the name of your App target and then, in the Podfile directory, run the following command:

```bash
$ pod install --repo-update
```

## Getting started

To begin making calls to the Kaleyra Video platform, you need first to obtain credentials for your app. In order to do so, you must contact our sales department. Head over to our [website][kaleyra-website] or contact us at [video@kaleyra.com](mailto:video@kaleyra.com) to get your credentials. Once you obtained your credentials head over to our [wiki page][wiki] where you'll find a comprehensive set of guides that will help you integrate the Kaleyra Video SDK in your iOS app. 

## Documentation

You can find the complete code documentation for the latest version [here][latest-doc]. If you are looking for the stable version documentation please checkout this [link][stable-doc] instead.
You can find all the code guides in our [wiki page][wiki].

## Sample apps

You can find a sample app showing you the Kaleyra Video SDK capabilities and features at the link below:

- [Swift samples][swift-samples]

## Looking for other platforms?

- [Android][android]
- [Cordova][cordova]
- [React Native][react]
- [Flutter][flutter]

## Support

To get basic support please submit an [Issue][issues]

If you prefer commercial support, please contact us sending an email at: [video@kaleyra.com](mailto:video@kaleyra.com).

## Credits

- [WebRTC](https://webrtc.org/)
- [Socket.IO-Client-Swift](https://github.com/socketio/socket.io-client-swift)
- [Starscream](https://github.com/daltoniam/starscream)
- [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack)
- [PromiseKit](https://github.com/mxcl/PromiseKit)

[spm]: https://www.swift.org/package-manager/
[cocoapods]: https://cocoapods.org/
[cocoapods-getting-started]: https://guides.cocoapods.org/using/getting-started.html
[installation-guide]: https://github.com/KaleyraVideo/VideoiOSSDK/wiki/Installation
[kaleyra-website]: https://www.kaleyra.com/
[wiki]: https://github.com/KaleyraVideo/VideoiOSSDK/wiki
[latest-doc]: https://kaleyravideo.github.io/VideoiOSSDK/BandyerSDK/latest/index.html
[stable-doc]: https://kaleyravideo.github.io/VideoiOSSDK/BandyerSDK/stable/index.html
[swift-samples]: https://github.com/KaleyraVideo/Video-iOS-SDK-Samples
[android]: https://github.com/KaleyraVideo/VideoAndroidSDK
[cordova]: https://github.com/KaleyraVideo/VideoCordovaPlugin
[react]: https://github.com/KaleyraVideo/VideoReactNativeModule
[flutter]: https://github.com/KaleyraVideo/VideoFlutterPlugin
[issues]: https://github.com/KaleyraVideo/VideoiOSSDK/issues
