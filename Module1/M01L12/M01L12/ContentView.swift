//
//  ContentView.swift
//  M01L12
//
//  Created by Jorge Calderita Echeverria on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var value = 0
    @State var add = true
    func increase(isTrue: Bool) {
        let number = Int.random(in: 1...10)
        if isTrue {
            value += number
        } else {
            value -= number
        }
    }
    
    var body: some View {
        VStack(spacing:20) {
            Text("\(value)")
            Button("Tap") {
                if value > 50 {
                    add = false
                } else if value < 0 {
                    add = true
                }
                increase(isTrue: add)
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
