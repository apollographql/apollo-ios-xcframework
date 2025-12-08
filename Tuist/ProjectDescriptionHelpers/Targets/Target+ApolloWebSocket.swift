import ProjectDescription

extension Target {
  
  public static func apolloWebSocketTarget() -> Target {
    let target = ApolloTarget.apolloWebSocket
    
    return .target(
      name: target.name,
      destinations: target.destinations,
      product: .framework,
      bundleId: "com.apollographql.client.ios.apollowebsocket",
      deploymentTargets: target.deploymentTargets,
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
    
    return .scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        .target(target.name)
      ])
    )
  }
  
}
