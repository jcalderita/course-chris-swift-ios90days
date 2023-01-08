//
//  Ingredient.swift
//  Recipe List App
//
//  Created by Jorge Calderita Echeverria on 3/1/23.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
}
