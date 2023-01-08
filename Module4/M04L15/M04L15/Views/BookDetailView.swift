//
//  BookDetailView.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var model:BookModel
    @State private var selectionRating: Int = 2
    var book: Book
    
    
    var body: some View {
        VStack(spacing: 20) {
            NavigationLink(destination: BookPages(book: book)) {
                VStack {
                    Text("Read Now!")
                        .font(.title)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
                .padding()
            }
            .tint(.black)
            
            Text("Mark for later!")
                .font(.headline)
            
            Button {
                model.updateFavourite(forId: book.id)
            } label: {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .tint(.yellow)

            Text("Rate Amazing Words")
            
            Picker("", selection: $selectionRating) {
                ForEach(1..<6) { index in
                    Text(String(index))
                        .tag(index)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 160)
            .onChange(of: selectionRating) { newValue in
                model.updateRating(forId: book.id, rating: newValue)
            }
            
            
        }
        .onAppear{ selectionRating = book.rating }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book())
            .environmentObject(BookModel())
    }
}
