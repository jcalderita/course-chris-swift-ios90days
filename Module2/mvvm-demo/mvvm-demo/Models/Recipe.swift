//
//  Recipe.swift
//  mvvm-demo
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name: String
    var cuisine: String
}
