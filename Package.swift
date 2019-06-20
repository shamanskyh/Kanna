// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Kanna",
    products: [
      .library(name: "Kanna", targets: ["Kanna"]),
    ],
    targets: [
        .target(name: "Kanna",
                path: "Sources",
                exclude: [
                    "Sources/Info.plist",
                    "Sources/Kanna.h",
                    "Tests/KannaTests/Data"
                ],
                cSettings: [.headerSearchPath("$(SDKROOT)/usr/include/libxml2")],
                linkerSettings: [.linkedLibrary("xml2")]),
        .testTarget(name: "KannaTests",
                    dependencies: ["Kanna"]
                )
    ]
)
