// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PokemonGraphQLCallQuery: GraphQLQuery {
  public static let operationName: String = "PokemonGraphQLCall"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query PokemonGraphQLCall { pokemon_v2_pokemon(order_by: { id: asc }, limit: 20) { __typename id name pokemon_v2_pokemonsprites { __typename sprites(path: "front_default") } height weight pokemon_v2_pokemontypes { __typename pokemon_v2_type { __typename name } } } }"#
    ))

  public init() {}

  public struct Data: PokeAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Query_root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("pokemon_v2_pokemon", [Pokemon_v2_pokemon].self, arguments: [
        "order_by": ["id": "asc"],
        "limit": 20
      ]),
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
        .field("pokemon_v2_pokemonsprites", [Pokemon_v2_pokemonsprite].self),
        .field("height", Int?.self),
        .field("weight", Int?.self),
        .field("pokemon_v2_pokemontypes", [Pokemon_v2_pokemontype].self),
      ] }

      public var id: Int { __data["id"] }
      public var name: String { __data["name"] }
      /// An array relationship
      public var pokemon_v2_pokemonsprites: [Pokemon_v2_pokemonsprite] { __data["pokemon_v2_pokemonsprites"] }
      public var height: Int? { __data["height"] }
      public var weight: Int? { __data["weight"] }
      /// An array relationship
      public var pokemon_v2_pokemontypes: [Pokemon_v2_pokemontype] { __data["pokemon_v2_pokemontypes"] }

      /// Pokemon_v2_pokemon.Pokemon_v2_pokemonsprite
      ///
      /// Parent Type: `Pokemon_v2_pokemonsprites`
      public struct Pokemon_v2_pokemonsprite: PokeAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Pokemon_v2_pokemonsprites }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("sprites", PokeAPI.Jsonb.self, arguments: ["path": "front_default"]),
        ] }

        public var sprites: PokeAPI.Jsonb { __data["sprites"] }
      }

      /// Pokemon_v2_pokemon.Pokemon_v2_pokemontype
      ///
      /// Parent Type: `Pokemon_v2_pokemontype`
      public struct Pokemon_v2_pokemontype: PokeAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Pokemon_v2_pokemontype }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pokemon_v2_type", Pokemon_v2_type?.self),
        ] }

        /// An object relationship
        public var pokemon_v2_type: Pokemon_v2_type? { __data["pokemon_v2_type"] }

        /// Pokemon_v2_pokemon.Pokemon_v2_pokemontype.Pokemon_v2_type
        ///
        /// Parent Type: `Pokemon_v2_type`
        public struct Pokemon_v2_type: PokeAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { PokeAPI.Objects.Pokemon_v2_type }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String.self),
          ] }

          public var name: String { __data["name"] }
        }
      }
    }
  }
}
