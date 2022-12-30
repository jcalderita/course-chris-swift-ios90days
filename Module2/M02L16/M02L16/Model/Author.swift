//
//  Author.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import Foundation

class Author: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
}
