//
//  ContentView.swift
//  M01L11
//
//  Created by Jorge Calderita Echeverria on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0
    var body: some View {
        VStack (spacing: 40) {
            HStack(spacing: 40) {
                Button("Increase") {
                    value += 2
                }
                Button("Multiply") {
                    value *= 2
                }
            }
            Text(String(value))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
