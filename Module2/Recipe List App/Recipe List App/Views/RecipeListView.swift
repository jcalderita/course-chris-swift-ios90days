//
//  ContentView.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 28/12/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationStack {
            List(model.recipes) { item in
                NavigationLink(
                    destination: RecipeDetailView(recipe: item),
                    label: {
                        HStack(spacing:20.0) {
                            Image(item.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(item.name)
                        }
                    }
                )
            }
            .navigationTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
