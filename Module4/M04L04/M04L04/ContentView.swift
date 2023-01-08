//
//  ContentView.swift
//  M04L04
//
//  Created by Jorge Calderita Echeverria on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:0) {
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("Width: \(geo.size.width) Height: \(geo.size.height)")
                    }
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width*0.75, height: geo.size.height/4)
                    .padding(.leading, geo.size.width*0.25 / 2)
                    .padding(.top, geo.size.height/3)
                    .onTapGesture {
                        print("Width: \(geo.size.width*0.75) Height: \(geo.size.height/4)")
                    }
            }
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geo.size.width / 2)
                    .onTapGesture {
                        print("Width: \(geo.size.width/2) Height: \(geo.size.height)")
                    }
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: geo.size.width / 2)
                    .padding(.leading, geo.size.width / 2)
                    .onTapGesture {
                        print("Width: \(geo.size.width/2) Height: \(geo.size.height)")
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
