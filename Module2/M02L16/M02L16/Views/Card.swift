//
//  Card.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import SwiftUI

struct Card: View {
    
    let author:Author
    
    var body: some View {
        
        NavigationLink(destination: AuthorDetailView(author: author)) {
            ZStack {
                Image(author.image)
                    .resizable()
                    .scaledToFit()
                VStack(spacing: 10) {
                    Text(author.quotes[0])
                        .font(.title)
                        .bold()
                    Text("- \(author.name)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .foregroundColor(.white)
                .padding()
            }
            .cornerRadius(10)
            .padding()
        }
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        let model = AuthorModel()
        Card(author: model.authors[0])
    }
}
