//
//  ContentView.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @State var games: [Game] = getGames()
    @State var newGame: Game = Game(title: "", developer: "", description: "", cover: "controller", year: 2026, review: "", rating: 1)
    @State private var showGameSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            List($games) { $game in
                NavigationLink(destination: GameDetailView(game: $game)) {
                    GameListItem(game: game)
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            .navigationTitle("Game Manager")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { showGameSheet.toggle() }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showGameSheet) {
                AddEditView(game: $newGame)
                    .onDisappear {
                        if !newGame.title.isEmpty {
                            games.append(newGame)
                        }
                        newGame = Game(title: "", developer: "", description: "", cover: "controller", year: 2026, review: "", rating: 1)
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
