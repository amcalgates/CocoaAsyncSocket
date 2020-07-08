// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DWCocoaAsyncSocket",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "DWCocoaAsyncSocket",
            targets: ["DWCocoaAsyncSocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DWCocoaAsyncSocket",
            dependencies: [],
            path: "Source/GCD",
            publicHeadersPath: ""),

        .testTarget(name: "SharedObjCTests",
                    dependencies: ["DWCocoaAsyncSocket"],
                    path: "Tests/Shared/ObjC"),

        .testTarget(name: "SharedSwiftTests",
                    dependencies: ["DWCocoaAsyncSocket"],
                    path: "Tests/Shared/Swift")
    ]
)
