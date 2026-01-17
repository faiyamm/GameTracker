//
//  AddEditView.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import SwiftUI

struct AddEditView: View {
    @Binding var game: Game
    @State var workingGame: Game
    @Environment(\.dismiss) private var dismiss
    
    init(game: Binding<Game>) {
        _game = game
        _workingGame = .init(initialValue: game.wrappedValue)
    }
    
    var body: some View {
        NavigationStack {
            
            Form {
                Section(header: Text("Game Details")) {
                    TextField("Title", text: $workingGame.title)
                    TextField("Developer", text: $workingGame.developer)
                    Picker("Platform", selection: $workingGame.platform) {
                        ForEach(Platform.allCases, id: \.self) { platform in
                            Text(platform.rawValue).tag(platform)
                        }
                    }
                    
                    Picker("Status", selection: $workingGame.status) {
                        ForEach(Status.allCases, id: \.self) { status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                    
                    TextEditor(text: $workingGame.description)
                        .frame(height: 150)
                }
                Section(header: Text("Ratings & Reviews")) {
                    StarRatingView(rating: $workingGame.rating)
                    TextEditor(text: $workingGame.review)
                        .frame(height: 150)
                }
            }
            
            .navigationTitle(game.title.isEmpty ? "Add Game" : "Edit \(game.title)")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        game.title = workingGame.title
                        game.developer = workingGame.developer
                        game.description = workingGame.description
                        game.review = workingGame.review
                        game.rating = workingGame.rating
                        game.platform = workingGame.platform
                        game.status = workingGame.status
                        dismiss()
                    } label: {
                        Image(systemName: "checkmark")
                    }
                    .disabled(workingGame.title.isEmpty)
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button{ dismiss() } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}
