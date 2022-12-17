//
//  ContentView.swift
//  M01L13
//
//  Created by Jorge Calderita Echeverria on 17/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var credits: Int = 1000
    @State private var image1: Int = 1
    @State private var image2: Int = 2
    @State private var image3: Int = 3
        
    func playGame() {
        image1 = Int.random(in: 1...3)
        image2 = Int.random(in: 1...3)
        image3 = Int.random(in: 1...3)
        
        if image1 == image2 && image1 == image3 {
            credits += 25
        } else {
            credits -= 10
        }
    }
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(String(credits))")
            Spacer()
            HStack(spacing: 20) {
                Image("fruit\(image1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(image2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(image3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                playGame()
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .padding()
            .padding(.horizontal, 30.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
