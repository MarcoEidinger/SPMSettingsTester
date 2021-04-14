// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMSettingsTester",
    products: [
        .library(
            name: "SPMSettingsTester",
            targets: ["SPMSettingsTester", "SPMSettingsTesterObjC", "SPMSettingsTesterObjCBlank"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SPMSettingsTester",
            dependencies: [],
            swiftSettings: [
                .define("SQLITE_HAS_CODEC"),
            ]
        ),
        .target(
            name: "SPMSettingsTesterObjC",
            dependencies: [],
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: "1"),
            ]
        ),
        .target(
            name: "SPMSettingsTesterObjCBlank",
            dependencies: []),
        .testTarget(
            name: "SPMSettingsTesterTests",
            dependencies: ["SPMSettingsTester", "SPMSettingsTesterObjC", "SPMSettingsTesterObjCBlank"]),
    ]
)
