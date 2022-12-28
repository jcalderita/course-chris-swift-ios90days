//
//  ContentView.swift
//  M02L12
//
//  Created by Jorge Calderita Echeverria on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PizzaModel()
    var body: some View {
        List(model.pizzas) { item in
            HStack {
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                    HStack(spacing:10) {
                        ForEach(item.toppings, id: \.self) { string in
                            Text(string)
                                .font(.footnote)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
