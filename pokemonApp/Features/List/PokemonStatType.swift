import Foundation

struct PokemonStatType : Identifiable, Hashable, Codable{
    let id = UUID()
    let name: String
    let baseStat: Int    
}
