import ProjectDescription

extension Target {
  
  public static func apolloTestSupportTarget() -> Target {
    let target = ApolloTarget.apolloTestSupport
    
    return .target(
      name: target.name,
      destinations: target.destinations,
      product: .framework,
      bundleId: "com.apollographql.client.ios.apollotestsupport",
      deploymentTargets: target.deploymentTargets,
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
    
    return .scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        .target(target.name)
      ])
    )
  }
  
}
