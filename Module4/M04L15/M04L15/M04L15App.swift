//
//  M04L15App.swift
//  M04L15
//
//  Created by Jorge Calderita Echeverria on 7/1/23.
//

import SwiftUI

@main
struct M04L15App: App {
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environmentObject(BookModel())
        }
    }
}
