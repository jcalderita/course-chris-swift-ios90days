//
//  ContentView.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 28/12/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("All Recipes")
                    .padding(.top, 40)
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) { item in
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
                                        VStack(alignment: .leading) {
                                            Text(item.name)
                                                .foregroundColor(.black)
                                            RecipeHighlights(highlights: item.highlights)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                            )
                        }
                    }
                }
            }
            .toolbar(.hidden)
            .padding(.leading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
