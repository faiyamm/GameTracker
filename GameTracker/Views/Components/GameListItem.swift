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
        HStack {
            Image(game.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            Text("\(game.title)")
        }
    }
}
