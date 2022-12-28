//
//  ContentView.swift
//  M02L4
//
//  Created by Jorge Calderita Echeverria on 19/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var arrayList:[Int] = []
    
    func addToArrayList() {
        var number: Int
        
        repeat {
            number = Int.random(in: 1...10)
            arrayList.append(number)
        } while number != 7
    }
    
    func increaseAllInArrayList() {
        for index in arrayList.indices {
            arrayList[index] += 1
        }
    }
    
    func deleteAllArrayLista() {
        arrayList.removeAll()
    }
    
    var body: some View {
        VStack {
            List(arrayList, id:\.self) { itemArray in
                Text(String(itemArray))
            }
            HStack(spacing: 20) {
                Button("add") {
                    addToArrayList()
                }
                Button("increase") {
                    increaseAllInArrayList()
                }
                Button("delete") {
                    deleteAllArrayLista()
                }
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
