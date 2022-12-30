//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 29/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            //MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            //MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom, 5)
                ForEach(recipe.ingredients, id: \.self) { item in
                    Text("• \(item)")
                }
            }
            //MARK: Divider
            Divider()
            //MARK: Directions
            VStack(alignment: .leading) {
                Text("Directions")
                    .font(.headline)
                    .padding([.bottom, .top], 5)
                
                ForEach(0..<recipe.directions.count, id: \.self) { index in
                    Text("\(index+1). \(recipe.directions[index])")
                        .padding(.bottom, 5)
                }
                
            }
            .padding(.horizontal)
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
