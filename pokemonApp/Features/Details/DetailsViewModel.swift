import Foundation

class DetailsViewModel: ObservableObject {
    @Published var pokemon: Pokemon
    private var viewModel: PokemonViewModel
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
    }
    
    func toggleFavorite() {
        viewModel.toggleFavorite(for: pokemon)
    }
}
