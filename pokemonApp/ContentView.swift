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
                        let sprite = pokemon.pokemon_v2_pokemonsprites.first?.sprites
                        let types: [String] = pokemon.pokemon_v2_pokemontypes.map{ item in
                            if let temp = item.pokemon_v2_type {
                                return temp.name
                            }
                            return "unknown"
                        }
                        
                        let stats: [PokemonStat] = pokemon.pokemon_v2_pokemonstats.map { item in
                            if let temp = item.pokemon_v2_stat{
                                return PokemonStat(name: temp.name, baseStat: item.base_stat)
                            }
                            return PokemonStat(name: "", baseStat: 0)
                        }
                        
                        
                        return Pokemon(id: pokemon.id, name: pokemon.name.capitalized, height: pokemon.height ?? 0, weight: pokemon.height ?? 0, sprite: sprite ?? "", type: types, stats: stats)
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
    let weight: Int
    let sprite: String
    let type: [String]
    let stats: [PokemonStat]
}

struct PokemonStat : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let baseStat: Int
    
}

struct CardStat: View {
    let stat: PokemonStat
    
    var body: some View {
        HStack {
            Text("\(stat.name)")
            Spacer()
            Text("\(stat.baseStat)")
        }
        
        Divider()
    }
}

struct PokemonDetails: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: pokemon.sprite), content: {image in
                image.resizable().frame(width: 200, height: 200)
            }, placeholder: {
                ProgressView()
            })
            Text("Name: \(pokemon.name)")
            Text("Height: \(pokemon.height)cm")
            Text("Weight: \(pokemon.weight)kg")
            
            HStack{
                Text("Types: ")
                ForEach(pokemon.type, id: \.self) { type in
                    Text("\(type) ")
                }
            }
            
            VStack{
                Divider()
                ForEach(pokemon.stats, id: \.self) { stat in
                    CardStat(stat: stat)
                }
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 20)
            
        }
    }
}
