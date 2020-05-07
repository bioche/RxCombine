// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RxCombine",
    platforms: [
        .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RxCombine",
            targets: ["RxCombine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "RxCombine",
            dependencies: ["RxSwift", "RxRelay"],
            path: "Sources")
    ]
)
