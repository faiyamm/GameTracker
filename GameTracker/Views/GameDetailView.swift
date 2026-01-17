//
//  GameDetailView.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import SwiftUI

struct GameDetailView: View {
    @Binding var game: Game
    @State private var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                HStack {
                    Image(game.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.vertical, 20)
                    
                    VStack(alignment: .leading) {
                        Text(game.title)
                            .font(.largeTitle)
                            .bold()
                        Text(game.developer)
                            .font(Font.headline)
                            .foregroundStyle(.secondary)
                            .padding(.top, 5)
                        HStack(spacing: 10) {
                            CustomCapsule(text: game.platform.rawValue, color: .blue)
                            CustomCapsule(text: game.status.rawValue, color: .red)
                        }
                        Spacer()
                    }
                    .padding(.top, 20)
                }
                Text(game.description)
                
                HStack(spacing: 10) {
                    Text("Review")
                        .font(.title2.bold())
                        .padding(.vertical, 2)
                    
                    HStack(spacing: 2) {
                        ForEach(0..<5, id: \.self) { star in
                            Image(systemName: star < game.rating ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                        }
                    }
                }
                Text(game.review)
                    .font(.subheadline)
                    .padding(.vertical)
            }
            .padding(20)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: { showEditSheet.toggle() }) {
                    Image(systemName: "pencil")
                }
            }
        }
        .sheet(isPresented: $showEditSheet) {
            AddEditView(game: $game)
        }
    }
}
