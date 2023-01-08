//
//  ContentView.swift
//  M04L08
//
//  Created by Jorge Calderita Echeverria on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...65, id: \.self) { index in
                    Rectangle()
                        .fill(RadialGradient(
                            gradient: Gradient(colors: [.orange, .red]),
                            center: UnitPoint(x: 0.5, y: 0.5),
                            startRadius: 0,
                            endRadius: 200
                        ))
                        .frame(height: pow(1.1, CGFloat(index)))
                        .cornerRadius(15)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
