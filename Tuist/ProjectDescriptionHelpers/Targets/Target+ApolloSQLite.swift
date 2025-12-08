import ProjectDescription

extension Target {
  
  public static func apolloSQLiteTarget() -> Target {
    let target = ApolloTarget.apolloSQLite
    
    return .target(
      name: target.name,
      destinations: target.destinations,
      product: .framework,
      bundleId: "com.apollographql.client.ios.apollosqlite",
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
  
  public static func apolloSQLiteScheme() -> Scheme {
    let target: ApolloTarget = .apolloSQLite
    
    return .scheme(
      name: "\(target.name)-xcframework",
      buildAction: .buildAction(targets: [
        .target(target.name)
      ])
    )
  }
  
}
