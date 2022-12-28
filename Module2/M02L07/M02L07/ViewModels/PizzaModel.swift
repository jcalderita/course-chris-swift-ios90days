//
//  PizzaModel.swift
//  M02L07
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "hawaiana", topping1: "Pina", topping2: "Queso", topping3: "tomate"))
        pizzas.append(Pizza(name: "bacon", topping1: "bacon", topping2: "Tomate", topping3: "Queso"))
        pizzas.append(Pizza(name: "quesos", topping1: "azul", topping2: "roquefort", topping3: "oloroso"))
    }
    
    func addPineapple() {
        pizzas.indices.forEach {
            pizzas[$0].topping1 = "Pineapple"
        }        
    }
}
