//
//  Pizza.swift
//  M02L12
//
//  Created by Jorge Calderita Echeverria on 27/12/22.
//

import Foundation

class Pizza: Identifiable, Decodable {
    var id:UUID?
    var name: String
    var toppings:[String]
}
