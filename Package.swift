// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Hello",
    products: [
        .library(name: "Hello", targets: ["App"]),
//        .library(name: "SwiftMarkdown", targets: ["SwiftMarkdown"]),

    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        
        .package(url: "https://github.com/vapor-community/markdown.git", from: "0.4.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor", "SwiftMarkdown"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

