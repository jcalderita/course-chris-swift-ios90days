//
//  AuthorDetailView.swift
//  M02L16
//
//  Created by Jorge Calderita Echeverria on 30/12/22.
//

import SwiftUI

struct AuthorDetailView: View {
    var author:Author
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(author.name)
                    .font(.title)
                    .bold()
                ForEach(author.quotes, id: \.self) { quote in
                    Text(quote)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct AuthorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = AuthorModel()
        AuthorDetailView(author: model.authors[0])
    }
}
