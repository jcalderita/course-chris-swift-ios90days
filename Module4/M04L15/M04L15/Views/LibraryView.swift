//
//  ContentView.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 30) {
                    ForEach(model.books) { book in
                        NavigationLink(destination: BookDetailView(book: book)) {
                            BookView(book: book)
                                .padding([.leading, .trailing], 20)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(BookModel())
    }
}
