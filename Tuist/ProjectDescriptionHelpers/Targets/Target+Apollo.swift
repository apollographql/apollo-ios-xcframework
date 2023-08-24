import ProjectDescription

extension Target {
    
    public static func apolloTarget() -> Target {
        let target = ApolloTarget.apollo
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            dependencies: [
                .package(product: "ApolloAPI")
            ],
            settings: .forTarget(target)
        )
    }
    
}
