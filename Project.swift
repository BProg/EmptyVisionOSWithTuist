import ProjectDescription

let project = Project(
    name: "EmptyVisionOSTuist",
    options: .options(automaticSchemesOptions: .disabled),
    targets: [
        .target(
            name: "EmptyVisionOSTuist",
            destinations: .visionOS,
            product: .app,
            bundleId: "io.tuist.EmptyVisionOSTuist",
            infoPlist: .default,
            sources: ["EmptyVisionOSTuist/Sources/**"],
            dependencies: []
        ),
        .target(
            name: "EmptyVisionOSTuistTests",
            destinations: .visionOS,
            product: .unitTests,
            bundleId: "io.tuist.EmptyVisionOSTuistTests",
            infoPlist: .default,
            sources: ["EmptyVisionOSTuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "EmptyVisionOSTuist")]
        ),
    ],
    schemes: [
        .scheme(
            name: "Application",
            buildAction: .buildAction(targets: [.target("EmptyVisionOSTuist")]),
            testAction: .testPlans(["EmptyVisionOSTuist/Tests/AllTests.xctestplan"])
        )
    ],
    additionalFiles: [
        "EmptyVisionOSTuist/Tests/AllTests.xctestplan"
    ]
)
