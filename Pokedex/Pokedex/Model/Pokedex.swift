//
//  Pokedex.swift
//  Pokedex
//
//  Created by DanielHf on 08/11/23.
//

import Foundation

struct Pokedex: Decodable{
    let count: Int
    let siguiente: String
    let previous: String?
    let results: [Results]
    
    private enum CodingKeys: String, CodingKey {
        case count, results , previous// campos que son iguales
        case siguiente = "next" //campo a renombrar
    }
}

struct Results: Decodable, Hashable{
    let name: String
    let url: String
}
