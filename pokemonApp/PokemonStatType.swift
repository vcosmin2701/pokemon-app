//
//  PokemonStat.swift
//  pokemonApp
//
//  Created by Anonim on 25.09.2024.
//

import Foundation

struct PokemonStatType : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let baseStat: Int    
}
