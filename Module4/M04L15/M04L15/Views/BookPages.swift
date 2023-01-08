//
//  BookPages.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import SwiftUI

struct BookPages: View {
    
    @EnvironmentObject var model: BookModel
    var book: Book
    @State private var page = 0
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.content.indices, id: \.self) { pag in
                VStack {
                    Text(book.content[pag])
                        .tag(pag)
                    
                    Spacer()
                    
                    Text("page \(pag + 1)")
                }
                .padding()
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { newValue in
            model.updateCurrentPage(forId: book.id, page: newValue)
        })
        .onAppear {page = book.currentPage}
    }
    
}

struct BookPages_Previews: PreviewProvider {
    static var previews: some View {
        BookPages(book: Book())
            .environmentObject(BookModel())
    }
}
