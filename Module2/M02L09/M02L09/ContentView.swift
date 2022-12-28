//
//  ContentView.swift
//  M02L09
//
//  Created by Jorge Calderita Echeverria on 25/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var array:[String]?
    
    func arrayNil() {
        array = nil
    }
    func addArray() {
        array = []
        array?.append("Uno")
        array?.append("dos")
        array?.append("tres")
    }
    
    var body: some View {
        VStack(spacing:20) {
            if array != nil {
                List(array!, id: \.self) { item in
                    Text(item)
                }
            }
            HStack(spacing: 20) {
                Button("Nil Array") {
                    arrayNil()
                }
                Button("Add Array") {
                    addArray()
                }
            }
            if array == nil {
                Text("Please, touch second button")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
