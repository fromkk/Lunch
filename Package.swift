// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Lunch",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "Lunch", targets: ["Lunch"]),
        .library(name: "LunchTest", targets: ["LunchTest"])
    ],
    targets: [
        .target(
            name: "Lunch",
            path: "Lunch",
            exclude: []
        ),
        .target(
            name: "LunchTest",
            path: "LunchTest",
            exclude: []
        )
    ]
)

