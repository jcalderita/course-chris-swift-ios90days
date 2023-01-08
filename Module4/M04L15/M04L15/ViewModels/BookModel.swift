//
//  BookModel.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    private func findIndex(forId: Int) -> Int? {
        books.firstIndex(where: {$0.id == forId})
    }
    
    func updateFavourite(forId: Int) {
        if let index = findIndex(forId: forId) {
            books[index].isFavourite.toggle()
        }
    }
    
    func updateRating(forId: Int, rating: Int) {
        if let index = findIndex(forId: forId) {
            books[index].rating = rating
        }
    }
    
    func updateCurrentPage(forId: Int, page: Int) {
        if let index = findIndex(forId: forId) {
            books[index].currentPage = page
        }
    }
    
}
