//
//  AuthorModel.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import Foundation

class AuthorModel: ObservableObject {
    @Published var authors = [Author]()
    
    init() {
        self.authors = DataService.getLocalData()
    }
}
