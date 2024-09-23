// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PokemonGraphQLCallQuery: GraphQLQuery {
  public static let operationName: String = "PokemonGraphQLCall"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query PokemonGraphQLCall { pokemon_v2_pokemon { __typename id name height } }"#
    ))

  public init() {}

  public struct Data: PokeAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Query_root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("pokemon_v2_pokemon", [Pokemon_v2_pokemon].self),
    ] }

    /// fetch data from the table: "pokemon_v2_pokemon"
    public var pokemon_v2_pokemon: [Pokemon_v2_pokemon] { __data["pokemon_v2_pokemon"] }

    /// Pokemon_v2_pokemon
    ///
    /// Parent Type: `Pokemon_v2_pokemon`
    public struct Pokemon_v2_pokemon: PokeAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Pokemon_v2_pokemon }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int.self),
        .field("name", String.self),
        .field("height", Int?.self),
      ] }

      public var id: Int { __data["id"] }
      public var name: String { __data["name"] }
      public var height: Int? { __data["height"] }
    }
  }
}
