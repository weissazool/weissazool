// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "Weissazool",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    .executable(name: "Weissazool", targets: ["Weissazool"]),
  ],
  dependencies: [
    .package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
  ],
  targets: [
    .executableTarget(
      name: "Weissazool",
      dependencies: [
        .product(name: "Publish", package: "publish")
      ]
    )
  ]
)
