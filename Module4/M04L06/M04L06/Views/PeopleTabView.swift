//
//  ContentView.swift
//  M04L06
//
//  Created by Jorge Calderita Echeverria on 3/1/23.
//

import SwiftUI

struct PeopleTabView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem {
                    Image(systemName: "person.2")
                }

            VStack {
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                Toggle("Show name:", isOn: $model.showName)
                Toggle("Show address:", isOn: $model.showAddress)
                Toggle("Show company:", isOn: $model.showCompany)
                Toggle("Show years of experience:", isOn: $model.showYears)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding()
            .tabItem {
                Image(systemName: "gearshape")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleTabView()
            .environmentObject(Model())
        
    }
}
