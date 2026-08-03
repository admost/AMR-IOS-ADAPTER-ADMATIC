![AMRAdapterAdmatic: Admost Mediation iOS SDK](https://www.admost.com/img/logo.svg)

[![Swift](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AMRAdapterAdmatic.svg?style=flat-square)](https://img.shields.io/cocoapods/v/AMRAdapterAdmatic.svg)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)

# AMRAdapterAdmatic

Admatic adapter for AMRSDK. Allows publishers to mediate Admatic banner, interstitial and video ads in AMRSDK. Built on top of PrebidMobile.

## Requirements

- iOS 13.0+
- Xcode 26+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` dependencies:

```swift
https://github.com/admost/AMR-IOS-ADAPTER-ADMATIC.git
```

Then add `AMRAdapterAdmatic` to your target dependencies:

```swift
.product(name: "AMRAdapterAdmatic", package: "AMR-IOS-ADAPTER-ADMATIC")
```

Or in Xcode: **File → Add Package Dependencies** and enter the repository URL. PrebidMobile is resolved automatically as a Swift Package dependency.

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'AMRAdapterAdmatic'
```

Then run:

```sh
pod install
```

## License

Copyright 2016 Admost Mediation Limited. All rights reserved.

## Contact

- **Website:** [admost.com](http://www.admost.com/)
- **Email:** amr@admost.com
- **Documentation:** [admost.github.io/amrios](https://admost.github.io/amrios/)
