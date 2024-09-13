import ProjectDescription

extension Target {
    
    public static func apolloSQLiteTarget() -> Target {
        let target = ApolloTarget.apolloSQLite
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.client.ios.apollosqlite",
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

extension Scheme {
  
  public static func apolloSQLiteScheme() -> Scheme {
    let target: ApolloTarget = .apolloSQLite
    
    return Scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        TargetReference(
          projectPath: nil,
          target: target.name
        )
      ])
    )
  }
  
}
