// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension SchemaAPI {
  class SamplePokeAPIqueryQuery: GraphQLQuery {
    static let operationName: String = "samplePokeAPIquery"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query samplePokeAPIquery { pokemon_v2_pokemon(order_by: { id: asc }, limit: 20) { __typename id name height weight pokemon_v2_pokemonstats { __typename id pokemon_v2_stat { __typename name } } pokemon_v2_pokemontypes { __typename pokemon_v2_type { __typename name } } pokemon_v2_pokemonsprites { __typename sprites(path: "front_default") } } }"#
      ))

    public init() {}

    struct Data: SchemaAPI.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Query_root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("pokemon_v2_pokemon", [Pokemon_v2_pokemon].self, arguments: [
          "order_by": ["id": "asc"],
          "limit": 20
        ]),
      ] }

      /// fetch data from the table: "pokemon_v2_pokemon"
      var pokemon_v2_pokemon: [Pokemon_v2_pokemon] { __data["pokemon_v2_pokemon"] }

      /// Pokemon_v2_pokemon
      ///
      /// Parent Type: `Pokemon_v2_pokemon`
      struct Pokemon_v2_pokemon: SchemaAPI.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_pokemon }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int.self),
          .field("name", String.self),
          .field("height", Int?.self),
          .field("weight", Int?.self),
          .field("pokemon_v2_pokemonstats", [Pokemon_v2_pokemonstat].self),
          .field("pokemon_v2_pokemontypes", [Pokemon_v2_pokemontype].self),
          .field("pokemon_v2_pokemonsprites", [Pokemon_v2_pokemonsprite].self),
        ] }

        var id: Int { __data["id"] }
        var name: String { __data["name"] }
        var height: Int? { __data["height"] }
        var weight: Int? { __data["weight"] }
        /// An array relationship
        var pokemon_v2_pokemonstats: [Pokemon_v2_pokemonstat] { __data["pokemon_v2_pokemonstats"] }
        /// An array relationship
        var pokemon_v2_pokemontypes: [Pokemon_v2_pokemontype] { __data["pokemon_v2_pokemontypes"] }
        /// An array relationship
        var pokemon_v2_pokemonsprites: [Pokemon_v2_pokemonsprite] { __data["pokemon_v2_pokemonsprites"] }

        /// Pokemon_v2_pokemon.Pokemon_v2_pokemonstat
        ///
        /// Parent Type: `Pokemon_v2_pokemonstat`
        struct Pokemon_v2_pokemonstat: SchemaAPI.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_pokemonstat }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", Int.self),
            .field("pokemon_v2_stat", Pokemon_v2_stat?.self),
          ] }

          var id: Int { __data["id"] }
          /// An object relationship
          var pokemon_v2_stat: Pokemon_v2_stat? { __data["pokemon_v2_stat"] }

          /// Pokemon_v2_pokemon.Pokemon_v2_pokemonstat.Pokemon_v2_stat
          ///
          /// Parent Type: `Pokemon_v2_stat`
          struct Pokemon_v2_stat: SchemaAPI.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_stat }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", String.self),
            ] }

            var name: String { __data["name"] }
          }
        }

        /// Pokemon_v2_pokemon.Pokemon_v2_pokemontype
        ///
        /// Parent Type: `Pokemon_v2_pokemontype`
        struct Pokemon_v2_pokemontype: SchemaAPI.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_pokemontype }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("pokemon_v2_type", Pokemon_v2_type?.self),
          ] }

          /// An object relationship
          var pokemon_v2_type: Pokemon_v2_type? { __data["pokemon_v2_type"] }

          /// Pokemon_v2_pokemon.Pokemon_v2_pokemontype.Pokemon_v2_type
          ///
          /// Parent Type: `Pokemon_v2_type`
          struct Pokemon_v2_type: SchemaAPI.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_type }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", String.self),
            ] }

            var name: String { __data["name"] }
          }
        }

        /// Pokemon_v2_pokemon.Pokemon_v2_pokemonsprite
        ///
        /// Parent Type: `Pokemon_v2_pokemonsprites`
        struct Pokemon_v2_pokemonsprite: SchemaAPI.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { SchemaAPI.Objects.Pokemon_v2_pokemonsprites }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("sprites", SchemaAPI.Jsonb.self, arguments: ["path": "front_default"]),
          ] }

          var sprites: SchemaAPI.Jsonb { __data["sprites"] }
        }
      }
    }
  }

}