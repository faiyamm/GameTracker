//
//  api.swift
//  GameTracker
//
//  Created by Fai on 16/01/26.
//

import Foundation

func getGames() -> [Game] {
    return [
        Game(
            title: "Cyberpunk 2077",
            developer: "CD Projekt Red",
            description: "An open-world, action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification.",
            cover: "cyberpunk2077",
            year: 2020,
            platform: .pc,
            status: .completed,
            review: "Night City is incredibly immersive. The story paths and character depth are top-tier.",
            rating: 5
        ),
        
        Game(
            title: "Red Dead Redemption 2",
            developer: "Rockstar Games",
            description: "America, 1899. Arthur Morgan and the Van der Linde gang are outlaws on the run.",
            cover: "rdr2",
            year: 2018,
            platform: .ps5,
            status: .completed,
            review: "A masterpiece of storytelling and world-building. One of the best games ever made.",
            rating: 5
        ),
        
        Game(
            title: "Elden Ring",
            developer: "FromSoftware",
            description: "Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.",
            cover: "eldenring",
            year: 2022,
            platform: .ps5,
            status: .completed,
            review: "Brutal but fair. The sense of discovery in this open world is unmatched.",
            rating: 5
        ),
        
        Game(
            title: "GTA V",
            developer: "Rockstar Games",
            description: "A young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld.",
            cover: "gtav",
            year: 2013,
            platform: .pc,
            status: .playing,
            review: "Los Santos is a classic. The three-character mechanic still feels fresh.",
            rating: 4
        ),
        
        Game(
            title: "Battlefield 6",
            developer: "DICE",
            description: "A return to all-out warfare in the near future.",
            cover: "bf6",
            year: 2021,
            platform: .pc,
            status: .dropped,
            review: "Visually stunning, but I struggled with the map sizes and gameplay flow.",
            rating: 2
        )
    ]
}
