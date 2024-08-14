import ProjectDescription

extension Target {
    
    public static func apolloSQLiteTarget() -> Target {
        let target = ApolloTarget.apolloSQLite
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.apollosqlite",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            dependencies: [
                .target(name: ApolloTarget.apollo.name),
                .package(product: "SQLite")
            ],
            settings: .forTarget(target)
        )
    }
    
}
