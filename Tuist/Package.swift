// swift-tools-version: 6.0
@preconcurrency import PackageDescription

#if TUIST
@preconcurrency import ProjectDescription

let packageSettings = PackageSettings(
    // Customize the product types for specific package product
    // Default is .staticFramework
    // productTypes: ["SomeTarget": .framework,]
    productTypes: [:]
)
#endif

let package = Package(
    name: "Moneymate",
    dependencies: [
        // Add your own dependencies here:
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
    ]
)
