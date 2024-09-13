import ProjectDescription

extension Target {
    
    public static func apolloTestSupportTarget() -> Target {
        let target = ApolloTarget.apolloTestSupport
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.client.ios.apollotestsupport",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            dependencies: [
                .target(name: ApolloTarget.apolloAPI.name),
                .target(name: ApolloTarget.apollo.name)
            ],
            settings: .forTarget(target)
        )
    }
    
}

extension Scheme {
  
  public static func apolloTestSupportScheme() -> Scheme {
    let target: ApolloTarget = .apolloTestSupport
    
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
