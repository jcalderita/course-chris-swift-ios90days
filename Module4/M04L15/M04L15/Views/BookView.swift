//
//  BookView.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import SwiftUI

struct BookView: View {
    
    let book:Book
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
            VStack(alignment:.leading, spacing: 10) {
                Text(book.title)
                    .font(.title)
                    .bold()
                HStack {
                    Text(book.author)
                        .italic()
                    if book.isFavourite {
                        Spacer()
                        Image(systemName: "star.fill")
                            .tint(.yellow)
                    }
                }
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
        .tint(.black)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book())
    }
}
