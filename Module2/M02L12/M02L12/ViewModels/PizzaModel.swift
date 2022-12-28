//
//  PizzaModel.swift
//  M02L12
//
//  Created by Jorge Calderita Echeverria on 27/12/22.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "pizzas", ofType: "json")
        
        if let path = pathString {
            do {
                self.pizzas = try JSONDecoder()
                    .decode(
                        [Pizza].self,
                        from: Data(contentsOf: URL(fileURLWithPath: path)))
                self.pizzas.forEach { recipe in
                    recipe.id = UUID()
                }
            }
            catch {
                print(error)
            }
        }
    }
}
