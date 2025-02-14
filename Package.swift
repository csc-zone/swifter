// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "Swifter",

  platforms: [.iOS(.v15), .macOS(.v10_15), .tvOS(.v15)],

  products: [
    .library(name: "Swifter", targets: ["Swifter"]),
    .executable(name: "SwifterExample", targets: ["SwifterExample"])
  ],

  dependencies: [],

  targets: [
    .target(
      name: "Swifter", 
      dependencies: [], 
      path: "Xcode/Sources",
      exclude: ["Xcode/Sources/DemoServer.swift"]
    ),

    .executableTarget(
      name: "SwifterExample",
      dependencies: [
        "Swifter"
      ], 
      path: "SwifterExample"
    ),

    .testTarget(
      name: "SwifterTests", 
      dependencies: [
        "Swifter"
      ], 
      path: "Xcode/Tests"
    )
  ]
)
