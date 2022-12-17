//
//  ContentView.swift
//  03Challenge
//
//  Created by Jorge Calderita Echeverria on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(10)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
