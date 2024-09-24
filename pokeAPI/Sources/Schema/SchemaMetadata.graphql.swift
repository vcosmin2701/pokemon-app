// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == PokeAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == PokeAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == PokeAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == PokeAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "query_root": return PokeAPI.Objects.Query_root
    case "pokemon_v2_pokemon": return PokeAPI.Objects.Pokemon_v2_pokemon
    case "pokemon_v2_pokemonsprites": return PokeAPI.Objects.Pokemon_v2_pokemonsprites
    case "pokemon_v2_pokemontype": return PokeAPI.Objects.Pokemon_v2_pokemontype
    case "pokemon_v2_type": return PokeAPI.Objects.Pokemon_v2_type
    case "pokemon_v2_pokemonstat": return PokeAPI.Objects.Pokemon_v2_pokemonstat
    case "pokemon_v2_stat": return PokeAPI.Objects.Pokemon_v2_stat
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
