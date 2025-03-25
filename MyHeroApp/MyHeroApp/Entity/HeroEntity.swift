//
//  HeroEntity.swift
//  MyHeroApp
//
//  Created by Zhaina Igenbek on 17.03.2025.
//

import Foundation

struct HeroEntity: Decodable {
    let id: Int
    let name: String
    let appearance: Appearance
    let images: HeroImage
    let powerStats: PowerStats
    let biography: Biography
    
    var heroImageUrl: URL? {
        URL(string: images.sm)
    }

    struct Appearance: Decodable {
        let race: String?
        let gender: String?
        let height: [String]?
        let weight: [String]?
    }

    struct HeroImage: Decodable {
        let sm: String
        let md: String
    }
    
    struct PowerStats: Decodable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
    }
    
    struct Biography: Decodable {
        let placeOfBirth: String?
    }
}

