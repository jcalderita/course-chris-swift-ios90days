//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 6/1/23.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHighlights = ""
    
    init(highlights:[String]) {
        allHighlights = "\(highlights.joined(separator: ", "))."
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["Jorge","Pepito","Juanito"])
    }
}
