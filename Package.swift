// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "contacts",
    platforms: [
        .macOS(.v13),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0"),
        .package(url: "https://github.com/swiftcsv/SwiftCSV", from: "0.6.0"),
    ],

    targets: [
        .executableTarget(name: "contacts", dependencies: [
            // "Ambassador",
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            "SwiftCSV"
            // "ArgumentParser",
        ]),
    ]
)
