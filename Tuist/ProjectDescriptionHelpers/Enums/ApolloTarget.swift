import Foundation
import ProjectDescription

public enum ApolloTarget {
    case apollo
    case apolloAPI
    case apolloSQLite
    case apolloTestSupport
    case apolloWebSocket
    
    public var name: String {
        switch self {
        case .apollo:
            return "Apollo"
        case .apolloAPI:
            return "ApolloAPI"
        case .apolloSQLite:
            return "ApolloSQLite"
        case .apolloTestSupport:
          return "ApolloTestSupport"
        case .apolloWebSocket:
            return "ApolloWebSocket"
        }
    }
    
    public var xcconfigName: String {
        switch self {
        case .apollo:
            return "Apollo-Target-Framework"
        case .apolloAPI:
            return "Apollo-Target-ApolloAPI"
        case .apolloSQLite:
            return "ApolloSQLite-Target-Framework"
        case .apolloTestSupport:
            return "Apollo-Target-TestSupport"
        case .apolloWebSocket:
            return "ApolloWebSocket-Target-Framework"
        }
    }
    
    public var deploymentTarget: DeploymentTarget {
        switch self {
        case .apollo,
             .apolloAPI,
             .apolloSQLite,
             .apolloTestSupport,
             .apolloWebSocket:
            return .iOS(targetVersion: "13.0", devices: [.iphone, .ipad])
        }
    }
}
