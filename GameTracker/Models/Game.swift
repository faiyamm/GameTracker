//
//  Game.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation

struct Game: Hashable, Identifiable {
    let id: UUID = UUID()
    
    var title: String
    var developer: String
    var description: String
    var cover: String
    
    var year: Int
    var platform: Platform = .pc
    var status: Status = .notStarted
    
    var review: String
    var rating: Int
}
