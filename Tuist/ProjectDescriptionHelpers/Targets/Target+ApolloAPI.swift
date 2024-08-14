import ProjectDescription

extension Target {
    
    public static func apolloAPITarget() -> Target {
        let target = ApolloTarget.apolloAPI
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.client.ios.apolloapi",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            settings: .forTarget(target)
        )
    }
    
}
