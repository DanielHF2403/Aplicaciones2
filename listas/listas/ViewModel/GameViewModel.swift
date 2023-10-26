//
//  GameViewModel.swift
//  listas
//
//  Created by DanielHf on 09/10/23.
//

import Foundation

struct GameViewModel{
    
    func dummyData() -> [Game] {
        var games : [Game] = [
            Game (id: 1, image: "mario", name: "Mario Bros Galaxy", console: "Nintendo", price: 1200.00),
            Game (id: 2, image: "mario", name: "Mario Bros Galaxy", console: "Nintendo", price: 1200.00),
            Game (id: 3, image: "mario", name: "Mario Bros Galaxy", console: "Nintendo", price: 1200.00),
        ]
        
        return games
    }

}
