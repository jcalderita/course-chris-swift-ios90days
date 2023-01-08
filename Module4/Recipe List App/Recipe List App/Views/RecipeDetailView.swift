//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 29/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    @State private var selectedServingSize = 2
    
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                
                //MARK: Recipe title
                Text(recipe.name)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(.largeTitle)
                //MARK: Serving Size Piker
                VStack(alignment:.leading) {
                    Text("Select your serving size:")
                    Picker("", selection: $selectedServingSize) {
                        Text("2")
                            .tag(2)
                        Text("4")
                            .tag(4)
                        Text("6")
                            .tag(6)
                        Text("8")
                            .tag(8)
                    }
                    .pickerStyle(.segmented)
                    .frame(width:160)
                }
                .padding()
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    ForEach(recipe.ingredients) { ingredient in
                        Text("• \(RecipeModel.getPortion(ingredient: ingredient, recipeServings: recipe.servings, targetServings: selectedServingSize)) \(ingredient.name.lowercased())")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.horizontal)
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
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
