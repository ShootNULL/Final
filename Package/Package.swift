// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Package",
            targets: ["Package"]),
            
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Package",
            dependencies: [],
            path: "Sources",
            resources: [
                .process("Resources/Assets.xcassets")
            ]
        ),

    ]
)
