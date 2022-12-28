//
//  ContentView.swift
//  M02L07
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        VStack {
            List(model.pizzas) { pizza in
                VStack(alignment: .leading){
                    Text(pizza.name)
                        .font(.title)
                    HStack {
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                }
            }
            Button("Add Pineapple") {
                model.addPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
