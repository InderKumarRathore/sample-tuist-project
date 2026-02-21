import ProjectDescription

let project = Project(
    name: "MyProj",
    options: .options(disableSynthesizedResourceAccessors: true),
    settings: .settings(
        base: [
            // Adding this here makes compiler happy, thus no warning
            "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": "YES",
        ]
    ),
    targets: [
        .target(
            name: "MyProj",
            destinations: [.iPhone, .iPad, .macWithiPadDesign],
            product: .app,
            bundleId: "dev.eample.myproj",
            deploymentTargets: .iOS("18.0"),
            infoPlist: "MyProj/Resources/Info.plist",
            resources: [
                .glob(
                    pattern: "MyProj/Resources/**",
                    excluding: [
                        "MyProj/Resources/Info.plist",
                    ]
                ),
            ],
            buildableFolders: [.folder("MyProj/Sources")],
            dependencies: [],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6",
                    "ENABLE_USER_SCRIPT_SANDBOXING": "YES",
                    "ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME": "AccentColor",
                    "SWIFT_STRICT_CONCURRENCY": "complete",
                    "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": "YES",
                    "DEVELOPMENT_TEAM": "8Y6QRPJJHH",
                    "SWIFT_EMIT_LOC_STRINGS": "YES",
                    "VERSIONING_SYSTEM": "apple-generic",
                    "CURRENT_PROJECT_VERSION": "1",
                ]
            )
        ),
        .target(
            name: "MyProjTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.ikr.MyProjTests",
            infoPlist: .default,
            buildableFolders: [
                .folder(
                    "MyProjTests",
                    exceptions: [
                        .exception(excluded: [
                            "**/*.png",
                        ])
                    ]
                )
            ],
            dependencies: [
                .target(name: "MyProj"),
            ],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6",
                    "SWIFT_STRICT_CONCURRENCY": "complete",
                ]
            )
        ),
    ]
)
