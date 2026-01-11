// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "Lunch",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Lunch", targets: ["Lunch"]),
        .library(name: "LunchTest", targets: ["LunchTest"])
    ],
    targets: [
        .target(
            name: "Lunch",
            path: "Lunch",
            exclude: ["Info.plist"]
        ),
        .target(
            name: "LunchTest",
            path: "LunchTest",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "LunchTestTests",
            dependencies: ["LunchTest"],
            path: "LunchTestTests",
            exclude: ["Info.plist"]
        )
    ]
)
