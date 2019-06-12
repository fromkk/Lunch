// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Lunch",
    products: [
        .library(name: "Lunch", targets: ["Lunch"])
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

