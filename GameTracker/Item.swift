//
//  Item.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
