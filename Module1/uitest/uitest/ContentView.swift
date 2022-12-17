//
//  ContentView.swift
//  uitest
//
//  Created by Jorge Calderita Echeverria on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack{
                Spacer()
                Text("Hello!")
                Spacer()
                Text("Worl!")
                Spacer()
            }
            
            Spacer()
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
////            Text("Hello, world!")
////                .padding()
////                .background(Color.blue)
//            Text("Hello, world!")
//                .padding()
//                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
//                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/.blur(radius: 5))
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
