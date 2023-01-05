// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class RocketsQuery: GraphQLQuery {
  public static let operationName: String = "RocketsQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      """
      query RocketsQuery {
        rockets {
          __typename
          id
          name
          height {
            __typename
            meters
          }
          mass {
            __typename
            kg
          }
        }
      }
      """
    ))

  public init() {}

  public struct Data: SpaceXAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { SpaceXAPI.Objects.Query }
    public static var __selections: [Selection] { [
      .field("rockets", [Rocket?]?.self),
    ] }

    public var rockets: [Rocket?]? { __data["rockets"] }

    /// Rocket
    ///
    /// Parent Type: `Rocket`
    public struct Rocket: SpaceXAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { SpaceXAPI.Objects.Rocket }
      public static var __selections: [Selection] { [
        .field("id", ID?.self),
        .field("name", String?.self),
        .field("height", Height?.self),
        .field("mass", Mass?.self),
      ] }

      public var id: ID? { __data["id"] }
      public var name: String? { __data["name"] }
      public var height: Height? { __data["height"] }
      public var mass: Mass? { __data["mass"] }

      /// Rocket.Height
      ///
      /// Parent Type: `Distance`
      public struct Height: SpaceXAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { SpaceXAPI.Objects.Distance }
        public static var __selections: [Selection] { [
          .field("meters", Double?.self),
        ] }

        public var meters: Double? { __data["meters"] }
      }

      /// Rocket.Mass
      ///
      /// Parent Type: `Mass`
      public struct Mass: SpaceXAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { SpaceXAPI.Objects.Mass }
        public static var __selections: [Selection] { [
          .field("kg", Int?.self),
        ] }

        public var kg: Int? { __data["kg"] }
      }
    }
  }
}
