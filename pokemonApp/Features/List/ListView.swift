//
//  ContentView.swift
//  pokemonApp
//
//  Created by Anonim on 23.09.2024.
//

import SwiftUI
import Apollo
import PokeAPI


struct ListView: View {
    
    @StateObject private var viewModel = PokemonViewModel()
    @State private var searchOption: String = ""
    
    var filteredPokemonList: [Pokemon] {
        if searchOption.isEmpty {
            return viewModel.pokemonList
        } else {
            return viewModel.pokemonList.filter { pokemon in
                pokemon.name.lowercased().contains(searchOption.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView("Content is loading..")
                }
                else if filteredPokemonList.isEmpty{
                    Text("Not found")
                }else{
                    List(filteredPokemonList) { pokemon in
                        HStack {
                            AsyncImage(url: URL(string: pokemon.sprite), scale: 3)
                            NavigationLink(pokemon.name, value: pokemon)
                        }
                        
                    }
                }
                
            }
            .navigationDestination(for: Pokemon.self) { pokemon in
                PokemonDetailsView(pokemon: pokemon)
            }
            .navigationTitle("Home")
            .searchable(text: $searchOption, prompt: "Search for a pokemon")
            
        }
        .onAppear {
            viewModel.fetchPokemon()
        }
    }
    
    
}

