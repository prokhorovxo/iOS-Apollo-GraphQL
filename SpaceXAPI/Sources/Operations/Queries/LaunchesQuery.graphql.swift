// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LaunchesQuery: GraphQLQuery {
  public static let operationName: String = "LaunchesQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      """
      query LaunchesQuery($upcomingFind: LaunchFind, $pastFind: LaunchFind) {
        launchesUpcoming(find: $upcomingFind) {
          __typename
          id
          mission_name
          launch_date_utc
        }
        launchesPast(find: $pastFind) {
          __typename
          id
          mission_name
          launch_date_utc
        }
      }
      """
    ))

  public var upcomingFind: GraphQLNullable<LaunchFind>
  public var pastFind: GraphQLNullable<LaunchFind>

  public init(
    upcomingFind: GraphQLNullable<LaunchFind>,
    pastFind: GraphQLNullable<LaunchFind>
  ) {
    self.upcomingFind = upcomingFind
    self.pastFind = pastFind
  }

  public var __variables: Variables? { [
    "upcomingFind": upcomingFind,
    "pastFind": pastFind
  ] }

  public struct Data: SpaceXAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { SpaceXAPI.Objects.Query }
    public static var __selections: [Selection] { [
      .field("launchesUpcoming", [LaunchesUpcoming?]?.self, arguments: ["find": .variable("upcomingFind")]),
      .field("launchesPast", [LaunchesPast?]?.self, arguments: ["find": .variable("pastFind")]),
    ] }

    public var launchesUpcoming: [LaunchesUpcoming?]? { __data["launchesUpcoming"] }
    public var launchesPast: [LaunchesPast?]? { __data["launchesPast"] }

    /// LaunchesUpcoming
    ///
    /// Parent Type: `Launch`
    public struct LaunchesUpcoming: SpaceXAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { SpaceXAPI.Objects.Launch }
      public static var __selections: [Selection] { [
        .field("id", ID?.self),
        .field("mission_name", String?.self),
        .field("launch_date_utc", Date?.self),
      ] }

      public var id: ID? { __data["id"] }
      public var mission_name: String? { __data["mission_name"] }
      public var launch_date_utc: Date? { __data["launch_date_utc"] }
    }

    /// LaunchesPast
    ///
    /// Parent Type: `Launch`
    public struct LaunchesPast: SpaceXAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { SpaceXAPI.Objects.Launch }
      public static var __selections: [Selection] { [
        .field("id", ID?.self),
        .field("mission_name", String?.self),
        .field("launch_date_utc", Date?.self),
      ] }

      public var id: ID? { __data["id"] }
      public var mission_name: String? { __data["mission_name"] }
      public var launch_date_utc: Date? { __data["launch_date_utc"] }
    }
  }
}
