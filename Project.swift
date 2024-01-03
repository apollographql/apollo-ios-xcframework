import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let project = Project(
    name: "Apollo",
    organizationName: "apollographql",
    options: .options(
        automaticSchemesOptions: .disabled
    ),
    packages: [
        .local(path: "./apollo-ios")
    ],
    settings: Settings.settings(configurations: [
        .debug(name: .debug, xcconfig: "Configuration/Apollo/Apollo-Project-Debug.xcconfig"),
        .release(name: .release, xcconfig: "Configuration/Apollo/Apollo-Project-Release.xcconfig")
    ]),
    targets: [
        .apolloTarget(),
        .apolloAPITarget(),
        .apolloSQLiteTarget(),
        .apolloWebSocketTarget()
    ]
)
