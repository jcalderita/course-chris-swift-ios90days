//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            do {
                self.recipes = try JSONDecoder()
                    .decode(
                        [Recipe].self,
                        from: Data(contentsOf: URL(fileURLWithPath: path)))
                self.recipes.forEach { recipe in
                    recipe.id = UUID()
                }
            }
            catch {
                print(error)
            }            
        }
    }
    
    func addRecipe() {
    }
}
