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
            VStack(spacing: 25) {
                Image(game.cover)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
                    .padding(.top, 20)

                VStack(spacing: 8) {
                    Text(game.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text(game.developer)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    HStack(spacing: 12) {
                        CustomCapsule(text: game.platform.rawValue, color: .blue)
                    }
                }

                VStack(alignment: .leading, spacing: 10) {
                    Label("Description", systemImage: "text.alignleft")
                        .font(.headline)
                        .foregroundColor(.blue)
                    
                    Text(game.description)
                        .font(.body)
                        .lineSpacing(4)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)

                VStack(alignment: .leading, spacing: 10) {
                    Label("My Review", systemImage: "quote.bubble.fill")
                        .font(.headline)
                        .foregroundColor(.orange)
                    
                    Text(game.review.isEmpty ? "No review yet." : game.review)
                        .font(.subheadline)
                        .italic()
                    
                    HStack {
                        Text("Rating:")
                            .font(.subheadline).bold()
                        StarRatingView(rating: .constant(game.rating))
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange.opacity(0.05))
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.orange.opacity(0.2), lineWidth: 1))
                
                Spacer(minLength: 30)
            }
            .padding(.horizontal)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: { showEditSheet.toggle() }) {
                    Image(systemName: "pencil")
                        .font(.title2)
                }
            }
        }
        .sheet(isPresented: $showEditSheet) {
            AddEditView(game: $game)
        }
    }
}
