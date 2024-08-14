import ProjectDescription

extension Target {
    
    public static func apolloTarget() -> Target {
        let target = ApolloTarget.apollo
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.apollo",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            dependencies: [
                .target(name: ApolloTarget.apolloAPI.name)
            ],
            settings: .forTarget(target)
        )
    }
    
}
