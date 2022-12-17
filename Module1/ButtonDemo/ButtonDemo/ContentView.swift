//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Jorge Calderita Echeverria on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Click Me", action: {
                print("Hello World")
            })
            Button("Prueba") {
                print("prueba")
            }
            Button {
                print("Symbol")
            } label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
