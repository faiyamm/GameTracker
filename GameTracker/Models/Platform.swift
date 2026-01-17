//
//  Platform.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation

enum Platform: String, CaseIterable, Codable {
    case pc = "PC"
    case ps5 = "PlayStation 5"
    case xbox = "Xbox Series X"
    case switchConsole = "Nintendo Switch"
    case unkown = "Unknown"
}
