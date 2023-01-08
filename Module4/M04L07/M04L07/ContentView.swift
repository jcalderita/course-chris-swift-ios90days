//
//  ContentView.swift
//  M04L07
//
//  Created by Jorge Calderita Echeverria on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            TabView {
                ForEach(0...49, id: \.self) { index in
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(
                                .sRGB,
                                red: Double.random(in: 0..<1),
                                green: Double.random(in: 0..<1),
                                blue: Double.random(in: 0..<1)
                            ))
                            .frame(
                                width: geo.size.width - 40,
                                height: geo.size.height - 100,
                                alignment: .top
                            )
                            .cornerRadius(15)
                            .shadow(
                                color: Color(.sRGB, red:0, green: 0, blue: 0, opacity: 0.5),
                                radius: 10,
                                x: -5,
                                y: 5
                        )
                        Image(systemName: "\(String(index + 1)).circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(50)

                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
