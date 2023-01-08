//
//  DataService.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 28/12/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")

        guard pathString != nil else {
            return [Recipe]()
        }
        
        do {
            let recipes:[Recipe] = try JSONDecoder()
                .decode(
                    [Recipe].self,
                    from: Data(contentsOf: URL(fileURLWithPath: pathString!)))

            recipes.forEach { recipe in
                recipe.id = UUID()
                recipe.ingredients.forEach { ingredient in
                    ingredient.id = UUID()
                }
            }
            return recipes
        }
        catch {
            print(error)
        }
        return [Recipe]()
    }
}
