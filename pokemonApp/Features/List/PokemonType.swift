//
//  PokemonType.swift
//  pokemonApp
//
//  Created by Anonim on 25.09.2024.
//

import Foundation

struct Pokemon: Identifiable, Hashable {
    let id: Int
    let name: String
    let height: Int
    let weight: Int
    let sprite: String
    let type: [String]
    let stats: [PokemonStatType]
}
