// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct LaunchFragment: SpaceXAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment LaunchFragment on Launch {
      __typename
      id
      mission_name
      launch_date_utc
    }
    """ }

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
