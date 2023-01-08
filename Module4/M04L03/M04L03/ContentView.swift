//
//  ContentView.swift
//  M04L03
//
//  Created by Jorge Calderita Echeverria on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex:Int = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("This tab's tag is \(tabIndex)")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            Button("Take me to tab 3!") {
                tabIndex = 2
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right")
                    Text("Tab 2")
                }
            }
            .tag(1)
            List {
                ForEach(1..<100) { _ in
                    Text("This is tab 3!")
                }
            }
            .tabItem {
                VStack{
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
