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
    
    @State private var pokemonNames: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                List(pokemonNames, id: \.self) { name in
                    NavigationLink(name, value: name)
                }
                .navigationDestination(for: String.self) { pokemonName in
                    PokemonDetails(name: pokemonName, height: 232)
                }
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
                    self.pokemonNames = pokemons.compactMap { $0.name }
                }
            case .failure(let error):
                print("Error loading Pokémon: \(error.localizedDescription)")
            }
        }
    }
}


struct PokemonDetails: View {
    let name: String
    let height: Double
    
    var body: some View {
        VStack {
            Text(name)
            Text("\(height)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
