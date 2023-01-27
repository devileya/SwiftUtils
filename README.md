SwiftUtils
========

SwiftUtils is a library to ease swift development process

## Features

- [x] CustomLoadingIndicator
- [x] HeartButtonView
- [x] LazyNavigationView
- [x] ObservableScrollView

## Extensions

- Date
- ViewDidLoad for SwiftUI

## Requirements

- iOS 14.0+ / Mac OS X 11+ / watchOS 5.0+ / tvOS 12.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

SwiftUtils is available through [Swift Package Manager](https://swift.org/package-manager/).

### Swift Package Manager

in `Package.swift` add the following:

```swift
dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/devileya/SwiftUtils", from: "1.0.0")
],
targets: [
    .target(
        name: "MyProject",
        dependencies: [..., "SwiftUtils"]
    )
    ...
]
```

## License

MIT license. See the [LICENSE file](LICENSE) for details.
