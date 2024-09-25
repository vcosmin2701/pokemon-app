import Foundation

struct PokemonStatType : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let baseStat: Int    
}
