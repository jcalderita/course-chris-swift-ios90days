//
//  ContentView.swift
//  M04L09
//
//  Created by Jorge Calderita Echeverria on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    let locations = [
        "Mexico City",
        "New York City",
        "Los Angeles",
        "Toronto",
        "Chicago",
        "Houston",
        "Havana",
        "Montréal",
        "Ecatepec de Morelos",
        "Philadelphia"
    ]
    
    let menuItems = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    let times = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    @State private var locationSelection:Int = 0
    @State private var menuSelection = 4
    @State private var timeSelection = 2
    
    var body: some View {
        VStack(spacing: 80) {
            Text("Ottimo Ristorante")
                .font(.largeTitle)
                .bold()
            HStack {
                Text("Location: ")
                Picker("Location:", selection: $locationSelection) {
                    ForEach(0..<locations.count, id: \.self) { index in
                        Text(locations[index])
                            .tag(index)
                    }
                }
                .pickerStyle(.menu)
            }
            
            VStack {
                Text("Order:")
                Picker("Order:", selection: $menuSelection) {
                    ForEach(0..<menuItems.count, id: \.self) { index in
                        Text(menuItems[index])
                            .tag(index)
                    }
                }
                .pickerStyle(.wheel)
            }
            VStack {
                Text("Pickup time:")
                Picker("Pickup time:", selection: $timeSelection) {
                    ForEach(0..<times.count, id: \.self) { index in
                        Text(times[index])
                            .tag(index)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Button("Pick for me!") {
                locationSelection = .random(in: 0..<locations.count)
                menuSelection = .random(in: 0..<menuItems.count)
                timeSelection = .random(in: 0..<times.count)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
