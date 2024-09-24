//
//  ContentView.swift
//  pokemonApp
//
//  Created by Anonim on 23.09.2024.
//

import SwiftUI
import Apollo
import PokeAPI


struct ContentView: View {
    let apolloClient = ApolloClient(
        url: URL(string: "https://beta.pokeapi.co/graphql/v1beta")!
    )
    
    @State private var pokemonList: [Pokemon] = []
    
    var body: some View {
        NavigationStack {
            List(pokemonList) { pokemon in
                NavigationLink(pokemon.name, value: pokemon)
            }
            .navigationDestination(for: Pokemon.self) { pokemon in
                PokemonDetails(pokemon: pokemon)
            }
            .navigationTitle("Home")
            
        }
        .padding()
        .onAppear {
            fetchPokemon()
        }
    }
    
    private func fetchPokemon() {
        let query = PokemonGraphQLCallQuery()
        
        apolloClient.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                if let pokemons = graphQLResult.data?.pokemon_v2_pokemon {
                    self.pokemonList = pokemons.compactMap { pokemon in
                        Pokemon(id: pokemon.id, name: pokemon.name, height: pokemon.height ?? 0)
                    }
                }
            case .failure(let error):
                print("Error loading Pokémon: \(error.localizedDescription)")
            }
        }
    }
}

struct Pokemon: Identifiable, Hashable {
    let id: Int
    let name: String
    let height: Int
}

struct PokemonDetails: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name)
            Text("\(pokemon.height)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
