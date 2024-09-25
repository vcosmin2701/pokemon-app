//
//  CardStat.swift
//  pokemonApp
//
//  Created by Anonim on 25.09.2024.
//

import SwiftUI

struct CardStatView: View {
    let stat: PokemonStatType
    
    var body: some View {
        HStack {
            Text("\(stat.name)")
            Spacer()
            Text("\(stat.baseStat)")
        }
        
        Divider()
    }
}
