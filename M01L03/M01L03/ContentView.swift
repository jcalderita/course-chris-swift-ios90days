//
//  ContentView.swift
//  M01L03
//
//  Created by Jorge Calderita Echeverria on 3/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                VStack(){
                    Text("CN Tower")
                        .font(.title)
                    Text("Toronto")
                        .font(.subheadline)
                    
                }
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .background(Color.black.opacity(0.5))
                .cornerRadius(10)
            }.padding()
            
            
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                VStack{
                    Text("Big Ben")
                        .font(.title)
                    Text("London")
                        .font(.subheadline)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.black.opacity(0.5))
                .cornerRadius(10)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
