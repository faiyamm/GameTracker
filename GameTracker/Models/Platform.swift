//
//  Platform.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation
import SwiftUI

enum Platform: String, CaseIterable, Codable {
    case pc = "PC"
    case ps5 = "PlayStation 5"
    case xbox = "Xbox Series X"
    case switchConsole = "Nintendo Switch"
    case mobile = "Mobile"
    case unknown = "Unknown"

    var color: Color {
        switch self {
        case .pc: return .purple
        case .ps5: return .blue
        case .xbox: return .green
        case .switchConsole: return .red
        case .mobile: return .orange
        case .unknown: return .gray
        }
    }
}
