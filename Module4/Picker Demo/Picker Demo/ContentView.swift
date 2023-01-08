//
//  ContentView.swift
//  Picker Demo
//
//  Created by Jorge Calderita Echeverria on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
            Picker("Tap Me", selection: $selectedIndex) {
                Text("Option 1")
                    .tag("0")
                Text("Option 2")
                    .tag("1")
                Text("Option 3")
                    .tag("2")
            }
            .pickerStyle(.menu)
            
            Text("You've selected: \(selectedIndex)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
