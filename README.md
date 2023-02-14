# Bandyer iOS SDK - (now Kaleyra Video)

<p align="center">
	<img src="img/logo.png" alt="Kaleyra Logo" title="Kaleyra Video" />
</p>

[![Cocoapods compatible](https://img.shields.io/cocoapods/v/Bandyer)](https://cocoapods.org/pods/Bandyer)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
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
- In-app Screensharing (iOS 13.0 and later only)
- Filesharing
- Screen device screensharing (iOS 12.0 and later only) 
- Picture in picture
- Live pointer
- Remote mute by admin
- Remote kick by admin

## Latest version

3.5.0 version is the latest stable version.

## Installation

Several installation methods are supported. [CocoaPods][cocoapods] is the most straightforward way to add the SDK to your project. If you're new to CocoaPods, their website contains lots of helpful [documentation][cocoapods-getting-started]. [Carthage][carthage] is also supported, for futher information head over to our [installation guide][installation-guide].
Even though the SDK has changed name from **Bandyer** to **Kaleyra Video** the SDK module name is still named **Bandyer**.

### Cocoapods

[CocoaPods][cocoapods] is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate the SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '10.0'
use_frameworks!

target '<YOUR_TARGET_NAME>' do
    pod 'Bandyer'
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

You can find several sample apps showing you the Kaleyra Video SDK capabilities and features at the links below:

- [Objective-C samples][objective-c-samples]
- [Swift samples][swift-samples]

## Looking for other platforms?

If you're looking for the Android platform head over to our [Android repository][android] to get the latest SDK version. We also ship a Cordova plugin for Hybrid applications, head over to our [Cordova repository][cordova] to get our latest plugin version. Even more, we ship a Xamarin binding suitable for Xamarin Native or Xamarin Forms apps, you can find it using NuGet, head over to our [Xamarin binding repository][xamarin] for more information. 

## Support

To get basic support please submit an [Issue][issues]

If you prefer commercial support, please contact us sending an email at: [video@kaleyra.com](mailto:video@kaleyra.com).

## Credits

- [WebRTC](https://webrtc.org/)
- [Socket.IO-Client-Swift](https://github.com/socketio/socket.io-client-swift)
- [Starscream](https://github.com/daltoniam/starscream)
- [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack)
- [IGListKit](https://github.com/Instagram/IGListKit)

[cocoapods]: https://cocoapods.org/
[cocoapods-getting-started]: https://guides.cocoapods.org/using/getting-started.html
[carthage]: https://github.com/Carthage/Carthage
[installation-guide]: https://github.com/Bandyer/Bandyer-iOS-SDK/wiki/Installation
[kaleyra-website]: https://www.kaleyra.com/
[wiki]: https://github.com/Bandyer/Bandyer-iOS-SDK/wiki
[latest-doc]: https://docs.bandyer.com/Bandyer-iOS-SDK/BandyerSDK/latest/index.html
[stable-doc]: https://docs.bandyer.com/Bandyer-iOS-SDK/BandyerSDK/stable/index.html
[objective-c-samples]: https://github.com/Bandyer/Bandyer-iOS-SDK-Samples
[swift-samples]: https://github.com/Bandyer/Bandyer-iOS-SDK-Samples-Swift
[android]: https://github.com/Bandyer/Bandyer-Android-SDK
[cordova]: https://github.com/Bandyer/Bandyer-Cordova-Plugin
[xamarin]: https://github.com/Bandyer/BandyerSDK-Xamarin-Bindings
[issues]: https://github.com/Bandyer/Bandyer-iOS-SDK/issues
