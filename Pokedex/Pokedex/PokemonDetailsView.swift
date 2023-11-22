//
//  PokemonDetailsView.swift
//  Pokedex
//
//  Created by DanielHf on 22/11/23.
//

import SwiftUI

struct PokemonDetailsView: View {
    @EnvironmentObject var pokemonList : PokemonListViewModel
        var body: some View {
            Text(pokemonList.pokemon.siguiente)
    }
}

struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsView().environmentObject(PokemonListViewModel())
    }
}
