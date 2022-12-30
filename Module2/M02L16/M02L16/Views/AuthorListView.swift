//
//  ContentView.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import SwiftUI

struct AuthorListView: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(model.authors) { author in
                    Card(author: author)
                }
                .navigationTitle("Quotes")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorListView()
    }
}
