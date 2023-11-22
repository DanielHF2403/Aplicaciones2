//
//  PokedexViewModel.swift
//  Pokedex
//
//  Created by DanielHf on 08/11/23.
//

import Foundation
import Combine

class PokedexViewModel: ObservableObject{
    @Published var pokedex: Pokedex
    
    init(){
        self.pokedex = Pokedex(results: [])
    }
    
    func getPokedex(){
        let endpoint: String = "https://pokeapi.co/api/v2/pokemon"
        
        guard let apiURL = URL(string: endpoint) else{
            fatalError("Url no válida o no definida.")
        }
        
        //Inicializar la peticion http
        var urlRequest = URLRequest(url: apiURL)
        
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler:{ data, response, error -> Void
            in
            //Empieza la recepción de información y errores
            
            if let error = error{
                print("Error: " + error.localizedDescription)
                return
            }
            guard let response = response as? HTTPURLResponse else {
                print("Error: Incapaz de conectar o recibir respuesta del servidor")
                return
        }
            if response.statusCode == 200 {
                guard let data = data else {
                    print("Respuesta vacía")
                    return
                }
                /*AQUÍ NUESTRA LOGICA para procesar la respuesta*/
                DispatchQueue.main.async {
                    do{
                        let finalData = try JSONDecoder().decode(Pokedex.self, from: <#T##Data#>)
                        self.pokedex = finalData
                    }catch let error {
                        print("Error al decodificar JSON \(error)")
                        return
                    }
                }
            }else{
                print("Status diferente a 200. Ejemplos: 500 - Internal server error, 400 - Not found , etc.")
                return
            }
        })
        task.resume()
        
    }
}
