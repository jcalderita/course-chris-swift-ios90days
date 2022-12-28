//
//  ContentView.swift
//  mvvm-demo
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        VStack {
            List(model.recipes) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.title)
                    Text(item.cuisine)
                }
            }
            Button("Add Recipe") {
                model.addRecipe()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
