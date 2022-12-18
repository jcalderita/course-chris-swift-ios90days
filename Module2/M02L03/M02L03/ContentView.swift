//
//  ContentView.swift
//  M02L03
//
//  Created by Jorge Calderita Echeverria on 18/12/22.
//

import SwiftUI

struct ContentView: View {
    
    let array = [
        "uno", "dos", "tres", "cuatro", "cinco",
        "seis", "siete", "ocho", "nueve", "diez"
    ]
    
    @State private var arrayList:[String] = []
    
    func addArrayList() {
        arrayList.append(array.randomElement()!)
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            List(arrayList, id: \.self) {arrayItem in
                Text(arrayItem)
            }
            Button("Add Item") {
                addArrayList()
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
