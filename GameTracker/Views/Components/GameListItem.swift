//
//  GameListItem.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import SwiftUI

struct GameListItem: View {
    let game: Game
    
    var body: some View {
        HStack(spacing: 16) {
            Image(game.cover)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 100)
                .cornerRadius(12)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(game.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(game.developer)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    CustomCapsule(text: game.platform.rawValue, color: .cyan)
                    if game.status == .completed {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    }
                }
            }
            Spacer()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 4)
    }
}
