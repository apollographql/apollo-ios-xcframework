<p align="center">
  <a href="https://raw.githubusercontent.com/apollographql/apollo-ios/main/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-lightgrey.svg?maxAge=2592000" alt="MIT license">
  </a>
</p>

### Apollo iOS XCFramework

This repo contains an Xcode environment to allow the building of `.xcframework`'s for the targets that are distributed as part of the [apollo-ios](https://github.com/apollographql/apollo-ios) Swift Package. There is a `make` file containing commands to build either all target frameworks, or specific ones, the following targets are supported:

- Apollo
- ApolloAPI
- ApolloSQLite
- ApolloWebSocket

This repo will be kept up-to-date with the [apollo-ios](https://github.com/apollographql/apollo-ios) repo release versions starting with version `1.6.0`, and commits will be tagged appropriately to match.

Any issues, questions, or requests around this repository should be submitted as an Issue in the [apollo-ios](https://github.com/apollographql/apollo-ios) repo.