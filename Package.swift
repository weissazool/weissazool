// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Weissazool",
    products: [
        .executable(name: "Weissazool", targets: ["Weissazool"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Weissazool",
            dependencies: ["Publish"]
        )
    ]
)
