RPFramework
============

[![Build Status](https://travis-ci.org/RedP4nda/RPFramework.svg?branch=master)](https://travis-ci.org/RedP4nda/RPFramework)
[![Twitter](https://img.shields.io/badge/twitter-@Florian_MrCloud-blue.svg?style=flat)](http://twitter.com/Florian_MrCloud)

# Disclaimer:

- This program is still under active development and in its early stage, consider that breaking changes and rewrites could occur before using it in a stable version


RPFramework is a set of utility classes and functions that aim to reduce boilerplate code and provide a cleaner architecture to your application

- [Features](#features)
- [The Basics](#the-basics)
- [To Do](#to-do)
- [Contributing](#contributing)
- [Installation](#installation)

# Features:

- Service-oriented Application Delegate (based on [PluggableApplicationDelegate](https://github.com/fmo91/PluggableApplicationDelegate/))

# The Basics

### Service-oriented Application Delegate

A service-oriented Application Delegate architecture will

Here is what your `AppDelegate` will look like:

```swift
import UIKit
import RPFramework
import PluggableApplicationDelegate

@UIApplicationMain
class AppDelegate: RPApplicationDelegate {

    override var services: [ApplicationService] {
        return [
            CrashlyticsApplicationService(),
            OtherApplicationService()
        ]
    }    
}
```

Each ApplicationService you define will receive `UIApplicationDelegate` method calls, you define an `ApplicationService` this way (for example if you want to integrate the Fabric sdk into your app):

```swift
import Foundation
import PluggableApplicationDelegate
import Fabric
import Crashlytics

final class CrashlyticsApplicationService: NSObject, ApplicationService {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Fabric.with([Crashlytics.self])
        return true
    }
}
```

The RPFramework Pod provides some basic `ApplicationService`s implementations that you can use out of the box or subclass in order to override the provided implementation, check the provided `ApplicationService`s [here](https://github.com/RedP4nda/RPFramework/tree/master/RPFramework/Classes/Core/AppDelegate/)

# To Do
-
-

# Installation
### Cocoapods
RPFramework can be added to your project using [CocoaPods](http://cocoapods.org) by adding the following lines to your `Podfile`:

```ruby
source 'https://github.com/RedP4nda/Specs'

pod 'RPFramework', '~> 0.9'
```

## Contributors
[![MrCloud](https://avatars2.githubusercontent.com/u/486140?s=100)](https://github.com/MrCloud)

## Partner
<img src="https://github.com/MobileTribe/pandroid/raw/master/pandroid-doc/assets/partner/lm.jpg" width="100" height="100" />

# Contributing

Contributions are very welcome 👍😃.

Before submitting any pull request, please ensure you have run the included tests (if any) and they have passed. If you are including new functionality, please write test cases for it as well.
