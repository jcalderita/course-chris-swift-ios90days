//
//  DataService.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import Foundation

struct DataService {
    static func getLocalData() -> [Book] {
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Book]()
        }
        
        do {
            let books:[Book] = try JSONDecoder()
                .decode(
                    [Book].self,
                    from: Data(contentsOf: URL(fileURLWithPath: pathString!)))
            
            return books
        }
        catch {
            print(error)
        }
        return [Book]()
    }
}
