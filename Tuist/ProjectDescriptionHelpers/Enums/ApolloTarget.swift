import Foundation
import ProjectDescription

public enum ApolloTarget {
    case apollo
    
    public var name: String {
        switch self {
        case .apollo:
            return "Apollo"
        }
    }
    
    public var xcconfigName: String {
        switch self {
        case .apollo:
            return "Apollo-Target-Framework"
        }
    }
    
    public var deploymentTarget: DeploymentTarget {
        switch self {
        case .apollo:
            return .iOS(targetVersion: "13.0", devices: [.iphone, .ipad])
        }
    }
}
