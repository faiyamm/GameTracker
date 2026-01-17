//
//  Status.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation

enum Status: String, CaseIterable, Codable {
    case notStarted = "Not Started"
    case playing = "Playing"
    case completed = "Completed"
    case dropped = "Dropped"
    case unknown = "Unknown"
}
