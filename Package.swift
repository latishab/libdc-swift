// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "LibDCSwift",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "LibDCSwift",
            targets: ["LibDCSwift"]
        ),
        .library(
            name: "LibDCBridge",
            targets: ["LibDCBridge"]
        )
    ],
    targets: [
        .target(
            name: "Clibdivecomputer",
            path: "libdivecomputer",
            exclude: [
                "doc",
                "m4"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/libdivecomputer"),
                .headerSearchPath("src"),
                .define("HAVE_PTHREAD_H")
            ]
        ),
        .target(
            name: "LibDCBridge",
            dependencies: ["Clibdivecomputer"],
            path: "Sources/LibDCBridge",
            sources: ["src/configuredc.c", "src/BLEBridge.m"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
                .headerSearchPath("../../libdivecomputer/include"),
                .headerSearchPath("../../libdivecomputer/src")
            ],
            linkerSettings: [
                .linkedFramework("CoreBluetooth"),
                .linkedFramework("Foundation")
            ]
        ),
        .target(
            name: "LibDCSwift",
            dependencies: ["LibDCBridge", "Clibdivecomputer"],
            path: "Sources/LibDCSwift",
            sources: [
                "Logger.swift",
                "BLEManager.swift",
                "Models/DeviceConfiguration.swift",
                "Models/DiveData.swift",
                "Models/StoredDevice.swift",
                "Models/SampleData.swift",
                "Models/DeviceFingerprint.swift",
                "ViewModels/DiveDataViewModel.swift",
                "Parser/GenericParser.swift",
                "DiveLogRetriever.swift"
            ],
            cSettings: [
                .headerSearchPath("../LibDCBridge/include")
            ],
            swiftSettings: [
                .unsafeFlags(["-import-objc-header", "Sources/LibDCBridge/include/libdcswift-bridging-header.h"])
            ],
            linkerSettings: [
                .linkedFramework("CoreBluetooth"),
                .linkedFramework("Foundation")
            ]
        )
    ]
) 
