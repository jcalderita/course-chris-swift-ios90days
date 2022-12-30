//
//  DataService.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Author] {
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Author]()
        }
        
        do {
            let authors:[Author] = try JSONDecoder()
                .decode(
                    [Author].self,
                    from: Data(contentsOf: URL(fileURLWithPath: pathString!)))
            
            authors.forEach { author in
                author.id = UUID()
            }
            return authors
        }
        catch {
            print(error)
        }
        return [Author]()
    }
}
