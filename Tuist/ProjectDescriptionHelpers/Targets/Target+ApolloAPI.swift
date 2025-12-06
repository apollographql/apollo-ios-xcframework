import ProjectDescription

extension Target {
  
  public static func apolloAPITarget() -> Target {
    let target = ApolloTarget.apolloAPI
    
    return .target(
      name: target.name,
      destinations: target.destinations,
      product: .framework,
      bundleId: "com.apollographql.client.ios.apolloapi",
      deploymentTargets: target.deploymentTargets,
      infoPlist: .file(path: "Sources/\(target.name)/Info.plist"),
      sources: [
        "apollo-ios/Sources/\(target.name)/**"
      ],
      settings: .forTarget(target)
    )
  }
  
}

extension Scheme {
  
  public static func apolloAPIScheme() -> Scheme {
    let target: ApolloTarget = .apolloAPI
    
    return .scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        .target(target.name)
      ])
    )
  }
  
}
