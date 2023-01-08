//
//  PeopleListView.swift
//  M04L06
//
//  Created by Jorge Calderita Echeverria on 3/1/23.
//

import SwiftUI

struct PeopleListView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack(spacing: 0) {
            Text("People")
                .font(.title)
                .bold()
            List(model.people) { person in
                VStack(alignment: .leading) {
                    if model.showName {
                        Text("Name: \(person.name)")
                    }
                    if model.showAddress {
                        Text("Address: \(person.address)")
                    }
                    if model.showCompany {
                        Text("Company: \(person.company)")
                    }
                    if model.showYears {
                        Text("Years of Experience: \(person.yearsOfExperience)")
                    }
                }
            }
        }
    }
}

struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
            .environmentObject(Model())
    }
}
