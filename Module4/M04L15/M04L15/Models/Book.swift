//
//  Book.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import Foundation


struct Book: Identifiable, Decodable {
    var id:Int = 1
    var title:String = "Title"
    var author:String = "Author"
    var isFavourite:Bool = false
    var currentPage:Int = 0
    var rating: Int = 2
    var content:[String] = ["I am a test book."]
}
