// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "SwiftUIInputField",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftUIInputField",
            targets: ["SwiftUIInputField"]),
    ],
    targets: [
        .target(
            name: "SwiftUIInputField",
            path: "Sources")
    ]
)

