//
//  ContentView.swift
//  M01L10
//
//  Created by Jorge Calderita Echeverria on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button("Prueba") {
                print("Prueba")
            }
            Button {
                print("Prueba2")
            } label: {
                Image(systemName: "play.fill")
                Text("Prueba2")
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
