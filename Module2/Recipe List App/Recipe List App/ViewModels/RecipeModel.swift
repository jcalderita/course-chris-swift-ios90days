//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 28/12/22.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
}
