//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 3/1/23.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    @State private var isDetailViewShowing = false
    @State var tabSelectionIndex = 0
    
    var body: some View {
        let recipes = model.recipes.filter({$0.featured})

        VStack(alignment: .leading, spacing: 0) {
            Text("Featured Recipes")
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
                .bold()
            
            GeometryReader { geo in
                TabView(selection: $tabSelectionIndex) {
                    ForEach(recipes) { recipe in
                        Button {
                            self.isDetailViewShowing = true
                        } label: {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                VStack(spacing: 0) {
                                    Image(recipe.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(recipe.name)
                                        .padding(5)
                                }
                            }
                        }
                        .tag(recipes.firstIndex(where: {
                            $0.id == recipe.id
                        })!)
                        .buttonStyle(.plain)
                        .frame(
                            width: geo.size.width - 40,
                            height: geo.size.height - 100,
                            alignment: .center
                        )
                        .cornerRadius(15)
                        .shadow(
                            color: Color(.sRGB, red:0, green: 0, blue: 0, opacity: 0.5),
                            radius: 10,
                            x: -5,
                            y: 5
                        )
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Preparation Time:")
                    .font(.headline)
                Text(recipes[tabSelectionIndex].prepTime)
                Text("Highlights")
                    .font(.headline)
                RecipeHighlights(highlights: recipes[tabSelectionIndex].highlights)
                
            }
            .padding([.leading, .bottom])
        }
        .sheet(isPresented: $isDetailViewShowing, content: {
            RecipeDetailView(recipe: recipes[tabSelectionIndex])
        })
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
