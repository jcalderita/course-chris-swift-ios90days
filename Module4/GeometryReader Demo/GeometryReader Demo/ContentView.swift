//
//  ContentView.swift
//  GeometryReader Demo
//
//  Created by Jorge Calderita Echeverria on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            GeometryReader { geo in
                Rectangle()
                    .frame(
                        width: geo.size.width/4,
                        height: geo.size.height/4
                    )
                    .onTapGesture {
                        print("x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
            }
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(
                        width: geo.size.width/4,
                        height: geo.size.height/4
                    )
                    .onTapGesture {
                        print("x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
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
