import ProjectDescription

extension Target {
  
  public static func apolloTarget() -> Target {
    let target = ApolloTarget.apollo
    
    return .target(
      name: target.name,
      destinations: target.destinations,
      product: .framework,
      bundleId: "com.apollographql.client.ios.apollo",
      deploymentTargets: target.deploymentTargets,
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

extension Scheme {
  
  public static func apolloScheme() -> Scheme {
    let target: ApolloTarget = .apollo
    
    return .scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        .target(target.name)
      ])
    )
  }
  
}
