// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Weather",
    platforms: [
        .iOS(.v13)  // Указываем минимальную версию iOS
    ],
    products: [
        .library(
            name: "Weather",
            targets: ["Weather"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Weather",
            dependencies: [],
            path: "Sources",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "WeatherTests",
            dependencies: ["Weather"]
        ),
    ]
)

