<p align="center">
	<img src="img/Bandyer-logotype-white-1024x500.png" alt="Bandyer" title="Bandyer" />
</p>

[![Cocoapods compatible](https://img.shields.io/cocoapods/v/Bandyer)](https://cocoapods.org/pods/Bandyer)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Twitter](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&logo=twitter)](https://twitter.com/intent/follow?screen_name=bandyersrl)


Bandyer is a young innovative startup that enables audio/video communication and collaboration from any platform and browser! Through its WebRTC architecture, it makes video communication simple and punctual. 

- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting started](#getting-started)
- [Documentation](#documentation)
- [Support](#support)
- [Credits](#credits)


## Overview

Bandyer iOS SDK makes it easy to add video conference and chat communication to mobile apps.

## Features

- Audio & Video calls
- Audio calls
- Audio calls upgradable to Video Calls
- Call from URL
- Seamless integration with CallKit
- Collaborative space
- Remote camera snapshot
- Chat (not yet available)

## Requirements

BandyerSDK requires **iOS 9.0** and above.
All frameworks contained in this repository are Fat dynamic frameworks.

Several third-party open source libraries are used within BandyerSDK, including:

1. [Socket.IO-Client-Swift](https://github.com/socketio/socket.io-client-swift) version >= 14.0
2. [Starscream](https://github.com/daltoniam/starscream) version >= 3.0.6

The following Cocoa frameworks must be linked into the application target for proper compilation:

1. **AVFoundation.framework**
1. **UIKit.framework**
1. **SystemConfiguration.framework**
1. **CoreGraphics.framework**
1. **Foundation.framework**
1. **MobileCoreServices.framework**
1. **WebKit.framework**

And the following linker flags must be set:

1. **-ObjC**
1. **-all_load**

The **CallKit.framework** is an optional dependency (weak framework). This means the SDK will be linked into your app and run without any issue even if **CallKit.framework** is not available, but you won't be able to take advantage of `CallKit` features and the seamless integration of your app in the iOS system.
It does worth noting that `CallKit` framework is available since iOS 10.0, so if you are building your App against iOS 9.0 SDK or you are running your app on an iOS 9.0 device, `CallKit` framework is not going to be available.

### Camera and Microphone Permissions

Your app Info.plist must contain NSCameraUsageDescription and NSMicrophoneUsageDescription keys, otherwise it will crash when the framework will try to capture video frames from the camera or audio frames from the microphone.

### ARC

BandyerSDK uses ARC.

### Bitcode

The WebRTC framework available in this repository doesn't include bitcode. Even though bitcode is supported by the upstream, Google source code builder produces ~700Mb binary with enabled bitcode, so it's hardly possible to distribute it as a framework that's why bitcode is disabled.

Make sure to disable bitcode for your project: Go to your project's settings and find the Build settings tab, check All and search for bitcode, then set it to No.

### Supported Architectures

1. **arm**
1. **arm64**
1. **x64**
1. **x86** 

### Swift

Socket.IO and Starscream are written in Swift, if your project doesn't contain any swift code swift standard libraries must be embedded anyway. To embed swift standard libraries go to your project's settings and find the Build settings tab then search for "Always Embed Swift Standard Libraries" and set it to YES. The supported swift version is 4.2


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


### Manual Installation

1. Clone or download the SDK
2. Then drag and drop the following frameworks into you XCode project
  	* `BandyerSDK.framework`
	* `WebRTC.framework`

3. Then drag and drop the following projects into your XCode project: 
	* `Socket.IO-Client-Swift`
	* `Starscream`

4. In your project's build configuration (Go to your project's settings and find the "Build Phases" tab, then in the "Target Dependencies" section) add the following frameworks:
	* `Socket.IO-Client-Swift`
	* `Starscream` 
	  
5. Then find the "General" tab and under the "Embedded Binaries" section add:
  	* `BandyerSDK.framework`
	* `WebRTC.framework`
	* `Socket.IO-Client-Swift`
	* `Starscream`

6. In the "Linked Frameworks and libraries" section add:
	* `AVFoundation.framework`
	* `SystemConfiguration.framework`
	* `CoreGraphics.framework`
	* `UIKit.framework`
	* `Foundation.framework`
	* `MobileCoreServices.framework`
	* `WebKit.framework`
	* `CallKit.framework` (if you want CallKit integration, iOS 10.0 and above only)
	* `PushKit.framework` (if you want CallKit and Voip notifications integrations, iOS 10.0 and above only)
	
7. In the "Build Settings" tab, check that **Enable bitcode** is set to **NO**, and if your app doesn't contain any swift code, set **Always Embed Swift Standard Libraries** to **YES**.

8. Last thing, **BandyerSDK.framework**, **WebRTC.framework** are Fat frameworks and they contain x86 and x64 slices that must be **removed** before submitting your app to the App Store, otherwise your binary won't pass through the AppStore validation checks, and your binary **will be rejected**. 
For an example of how to remove unsupported architecture see https://dzone.com/articles/creating-a-universal-framework-in-xcode-9

## Getting started

To begin making calls to the Bandyer platform, you need first to obtain credentials for your app. In order to do so, you must contact our sales department. Head over to our [website][bandyer-website] or contact us at [info@bandyer.com](mailto:info@bandyer.com).
You should also makes sure that `NSCameraUsageDescription` and `NSMicrophoneUsageDescription` keys have been added to your App **Info.plist** file

### SDK configuration
Once you obtained your credentials, you must set up and initialize the sdk singleton in your app. Below, we are going to show you how to initialize the sdk singleton in your AppDelegate, but you can initialize it wherever you want to.

``` objective-c
//Import the sdk umbrella header
#import <BandyerSDK/BandyerSDK.h>

@implementation AppDelegate

#define APP_ID @"PUT_YOUR_APP_ID_HERE"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //The default environment is production
    BDKEnvironment *env = BDKEnvironment.sandbox;
    BDKConfig *config = [BDKConfig new];
    config.environment = env;

    [BandyerSDK.instance initializeWithApplicationId:APP_ID config:config];

    return YES;
}

@end

```

### Starting the call client

Once the sdk has been initialized, you must start the call client in order to be able to receive incoming calls, or make outgoing calls. Again, we show you how to do it in the AppDelegate, but you can do it wherever you want to.

```objective-c
//Import the sdk umbrella header
#import <BandyerSDK/BandyerSDK.h>

@implementation AppDelegate

#define APP_ID @"PUT_YOUR_APP_ID_HERE"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //The default environment is production
    BDKEnvironment *env = BDKEnvironment.sandbox;
    BDKConfig *config = [BDKConfig new];
    config.environment = env;

    [BandyerSDK.instance initializeWithApplicationId:APP_ID config:config];
    
    //Before starting the call client, you should register as an observer 
    //in order to receive notifications about the call client changing state or 
    //when an incoming call has been received
    [BandyerSDK.instance.callClient addObserver:self queue:dispatch_get_main_queue()];
    
    //In order to start the call client you must provide a user alias identifying the 
    //user in Bandyer platform. 
    [BandyerSDK.instance.callClient start:@"PUT_YOUR_USER_ALIAS_HERE"];

    return YES;
}

// Call client observer method
- (void)callClientDidStart:(id <BCXCallClient>)client
{
    //When this method is invoked your app is ready to receive or make calls.
}


@end

```
When the call client notifies its observers that it has started, your app is ready to receive incoming calls or make outgoing calls.

### Making an outgoing call

In order to make an outgoing call, you must instantiate a `BDKCallViewController`, either programmatically or via storyboard, and hand it a `BDKMakeCallIntent`. The following snippet shows you how to do it, we are pretending this snippet is used in a view controller.

```objective-c

// 1 - First we create a configuration object for the controller. This object can be used to customize the behaviour of the view controller we are about to create.
BDKCallViewControllerConfiguration *config = [[BDKCallViewControllerConfiguration alloc] init];

// 2 - Then we create the view controller. You are not constrained to create it programmatically, you might want to create it in your storyboard for example.
BDKCallViewController *controller = [[BDKCallViewController alloc] init];

// 3 - We register as the view controller delegate, in order to be notified when we should dismiss it.
controller.delegate = self;

// 4 - We pass the configuration object to the view controller before the controller's view has been loaded.
[controller setConfiguration:config];

// 5 - We make the intent object which will encapsulate all the data needed to start an outgoing call.
BDKMakeCallIntent *intent = [BDKMakeCallIntent intentWithCallee:@[@"callee1",@"callee2"] type:BDKAudioVideoCallType record:NO maximumDuration:0];

// 6 - We signal the view controller that it should handle the intent provided. We must provide an intent before the view controller's view has been loaded.
[controller handleIntent:self.intent];

// 7 - Finally, we present the view controller.
[self presentViewController:controller animated:YES completion:NULL];

``` 
It should be noted that the client must be **started** and in `running` state before an outgoing call can be made.

### Receiving Incoming calls

Incoming calls can be received while the application is in foreground and active, or when the application is not active in background or suspended. In the former case the sdk client will receive an incoming call event when it is connected with Bandyer back-end server. In the latter case, it will receive a VOIP notification through APNS (more on this later). It does worth noting that handling voip notifications requires you to setup communication with APNS from your back-end system, which is beyond the scope of this document. We will show you only how to handle VOIP notifications on client side on a dedicated section of this document. 
Here, we are going to show you how to handle incoming call while the app is in foreground and active.

```objective-c
- (void)callClient:(id <BCXCallClient>)client didReceiveIncomingCall:(id <BCXCall>)call
{
    // 1 - First we create a configuration object for the controller. This object can be used to customize the behaviour of the view controller we are about to create.
    BDKCallViewControllerConfiguration *config = [[BDKCallViewControllerConfiguration alloc] init];

    // 2 - Then we create the view controller. You are not constrained to create it programmatically, you might want to create it in your storyboard for example.
    BDKCallViewController *controller = [[BDKCallViewController alloc] init];

    // 3 - We register as the view controller delegate, in order to be notified when we should dismiss it.
    controller.delegate = self;

    // 4 - We pass the configuration object to the view controller before the controller's view has been loaded.
    [controller setConfiguration:config];

    // 5 - We make an incoming call intent object 
    BDKIncomingCallHandlingIntent *intent = [[BDKIncomingCallHandlingIntent alloc] init];

    // 6 - We signal the view controller that it should handle the intent provided. We must provide an intent before the view controller's view has been loaded.
    [controller handleIntent:self.intent];

    // 7 - Finally, we present the view controller.
    [self presentViewController:controller animated:YES completion:NULL];
}

``` 
It should be noted that the client must be **started** and in `running` state before an incoming call can be answered.

## Documentation

You can find the complete documentation [here][documentation]

## Sample apps

You can find several sample apps showing you the BandyerSDK capabilities and features at the links below:

- [Objective-C samples][objective-c-samples]
- [Swift samples][swift-samples]

## Advanced usages and topics

You can checkout our [Wiki][wiki] for more advanced usages of our SDK

## Support

To get basic support please submit an [Issue][issues]

If you prefer commercial support, please contact [bandyer.com][bandyer-website] sending an email at: [info@bandyer.com](mailto:info@bandyer.com.).

## Android

If you need support for the SDK Android version head over to our [Android repository][android]

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
[issues]: https://github.com/Bandyer/Bandyer-iOS-SDK/issues
