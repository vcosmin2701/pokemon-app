import SwiftUI

struct PokemonDetailsView: View {
    let pokemon: Pokemon
    
    @ObservedObject var detailsModel: DetailsViewModel
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.detailsModel = DetailsViewModel(pokemon: pokemon, viewModel: viewModel)
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    detailsModel.toggleFavorite()
                } label: {
                    Image(systemName: detailsModel.pokemon.isFavorite ? "star.fill" : "star")
                        .foregroundColor(detailsModel.pokemon.isFavorite ? .yellow : .gray)
                }
            }
            
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
            
            
            Spacer()
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal, 20)
    }
}

