//
//  ContentView.swift
//  TabView Demo
//
//  Created by Jorge Calderita Echeverria on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("This is a tab 1")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            VStack {
                Text("This is tab 2")
                Text("This is some more text")
            }
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Tab 2")
                }
            }
            .tag(1)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
