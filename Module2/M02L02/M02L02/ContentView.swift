//
//  ContentView.swift
//  M02L02
//
//  Created by Jorge Calderita Echeverria on 18/12/22.
//

import SwiftUI

struct Card {
    var number: Int
    var suit: Int
    
    init(number: Int = 1, suit: Int = 0) {
        self.number = number
        self.suit = suit
    }
}

struct ContentView: View {
    private let suits:[String] = ["Spades", "Clubs", "Hearts", "Diamons"]
    private let nameCards:[String] = ["Ace","Jack", "Queen", "King"]
    @State private var textCard:String = ""
    
    @State private var deck:[Card] = []
    
    func getNameCard(number: Int) -> String {
        if number == 1 {
            return nameCards[0]
        } else if number == 11 {
            return nameCards[1]
        } else if number == 12 {
            return nameCards[2]
        } else if number == 13 {
            return nameCards[3]
        }
        return String(number)
    }
    
    func addCard() {
        let newCard = Card(
            number: Int.random(in: 1...13),
            suit: Int.random(in: 0...3)
        )
        
        if deck.contains(where: {
            $0.number == newCard.number &&
            $0.suit == newCard.suit
        }) {
            textCard = "Generated duplicate card"
        } else {
            textCard = "Generated a \(getNameCard(number: newCard.number)) of \(suits[newCard.suit])"
            deck.append(newCard)
        }
    }
    
    func getCard() {
        if deck.count == 0 {
            textCard = "No cards in the deck"
        } else {
            let card = deck.randomElement()
            textCard = "Drew a \(getNameCard(number: card!.number)) of \(suits[card!.suit])"
        }
    }
    

    
    
    var body: some View {
        VStack(spacing: 20) {
            Text(textCard)
            HStack(spacing: 20){
                Button("Add Card") {
                    addCard()
                }
                Button("Draw Card") {
                    getCard()
                }
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
