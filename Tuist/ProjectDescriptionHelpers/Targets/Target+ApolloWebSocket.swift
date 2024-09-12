import ProjectDescription

extension Target {
    
    public static func apolloWebSocketTarget() -> Target {
        let target = ApolloTarget.apolloWebSocket
        
        return Target(
            name: target.name,
            platform: .iOS,
            product: .framework,
            bundleId: "com.apollographql.client.ios.apollowebsocket",
            deploymentTarget: target.deploymentTarget,
            infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
            sources: [
                "apollo-ios/Sources/\(target.name)/**"
            ],
            dependencies: [
                .target(name: ApolloTarget.apollo.name)
            ],
            settings: .forTarget(target)
        )
    }
    
}

extension Scheme {
  
  public static func apolloWebSocketScheme() -> Scheme {
    let target: ApolloTarget = .apolloWebSocket
    
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
