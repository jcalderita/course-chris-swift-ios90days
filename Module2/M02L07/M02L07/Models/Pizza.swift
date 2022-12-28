//
//  Pizza.swift
//  M02L07
//
//  Created by Jorge Calderita Echeverria on 24/12/22.
//

import Foundation

struct Pizza: Identifiable {
    let id: UUID = UUID()
    let name: String
    var topping1: String
    let topping2: String
    let topping3: String
}
