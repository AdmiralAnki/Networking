// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Networking",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Networking",
            targets: ["Networking"]),
    ],
    dependencies: [.package(url: "https://github.com/Alamofire/Alamofire.git",
                            .upToNextMajor(from: "5.8.1")),
                   .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMajor(from: "4.3.0"))],
    targets: [
        .target(
            name: "Networking",
            dependencies: ["Alamofire","AlamofireImage"]),
        .testTarget(
            name: "NetworkingTests",
            dependencies: ["Networking"]),
    ]
)
