// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmitySDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AmitySDK",
            targets: ["DepTest"]), // Dummy Targets
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift.git", exact: "10.49.3")
        
    ],
    targets: [
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.1/AmitySDK.xcframework.zip",
            checksum: "6ffd3297479071174b3a4904cd77435b811f1b4d108b7e2066b404bb0463f76b"
        ),
        .target(
            name: "DepTest",
            dependencies: [
                .target(name: "AmitySDK"),
                .product(name: "RealmSwift", package: "realm-swift")
            ],
            path: "Sources"
        ),
    ],
    swiftLanguageModes: [.v5]
)
