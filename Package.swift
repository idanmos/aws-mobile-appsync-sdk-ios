// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSAppSync",
    products: [
        .library(
            name: "AWSAppSync",
            targets: ["AWSAppSync"]),
    ],
    targets: [
        .target(
            name: "AWSAppSync",
            dependencies: [
                
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "AppSyncRealTimeClient", package: "AppSyncRealTimeClient"),
                .product(name: "AWSCore", package: "AWSiOSSDKV2")
            ],
            path: "AWSAppSyncClient",
            exclude: [
                "Info.plist",
                "Apollo/Sources/Apollo/Info.plist"
            ]
        )
    ]
)
