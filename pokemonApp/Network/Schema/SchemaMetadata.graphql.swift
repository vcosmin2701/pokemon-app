// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol SchemaAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SchemaAPI.SchemaMetadata {}

protocol SchemaAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SchemaAPI.SchemaMetadata {}

protocol SchemaAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SchemaAPI.SchemaMetadata {}

protocol SchemaAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SchemaAPI.SchemaMetadata {}

extension SchemaAPI {
  typealias ID = String

  typealias SelectionSet = SchemaAPI_SelectionSet

  typealias InlineFragment = SchemaAPI_InlineFragment

  typealias MutableSelectionSet = SchemaAPI_MutableSelectionSet

  typealias MutableInlineFragment = SchemaAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "query_root": return SchemaAPI.Objects.Query_root
      case "pokemon_v2_pokemon": return SchemaAPI.Objects.Pokemon_v2_pokemon
      case "pokemon_v2_pokemonstat": return SchemaAPI.Objects.Pokemon_v2_pokemonstat
      case "pokemon_v2_stat": return SchemaAPI.Objects.Pokemon_v2_stat
      case "pokemon_v2_pokemontype": return SchemaAPI.Objects.Pokemon_v2_pokemontype
      case "pokemon_v2_type": return SchemaAPI.Objects.Pokemon_v2_type
      case "pokemon_v2_pokemonsprites": return SchemaAPI.Objects.Pokemon_v2_pokemonsprites
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}