import SwiftUI

struct PokemonDetailsView: View {
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
                    CardStatView(stat: stat)
                }
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 20)
        }
    }
}

