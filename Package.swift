// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TryPublish",
    products: [
        .executable(name: "TryPublish", targets: ["TryPublish"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "TryPublish",
            dependencies: ["Publish"]
        )
    ]
)