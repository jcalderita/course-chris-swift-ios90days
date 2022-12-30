//
//  PizzaDetailView.swift
//  M02L12
//
//  Created by Jorge Calderita Echeverria on 29/12/22.
//

import SwiftUI

struct PizzaDetailView: View {
    
    var pizza:Pizza
    
    var body: some View {
        ScrollView{
            Image(pizza.name)
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading) {
                Text("Toppings")
                    .font(.headline)
                    .padding(.bottom, 5)
                ForEach(pizza.toppings, id: \.self) { item in
                    Text("• \(item)")
                }
            }
        }
        .navigationTitle(pizza.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PizzaModel()
        PizzaDetailView(pizza: model.pizzas[0])
    }
}
