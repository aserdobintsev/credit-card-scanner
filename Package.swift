// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "CreditCardScanner",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "CreditCardScanner",
            targets: ["CreditCardScanner"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yhkaplan/Reg.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "CreditCardScanner",
            dependencies: ["Reg"]
        ),
        .testTarget(
            name: "CreditCardScannerTests",
            dependencies: ["CreditCardScanner"]
        ),
    ]
)
