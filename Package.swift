// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NetworkKitCore",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8),
        .tvOS(.v15),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "NetworkKitCore",
            targets: ["NetworkKitCore"])
    ],
    targets: [
        .target(
            name: "NetworkKitCore",
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency")
            ]),
        .testTarget(
            name: "NetworkKitCoreTests",
            dependencies: ["NetworkKitCore"],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency")
            ])
    ]
)
