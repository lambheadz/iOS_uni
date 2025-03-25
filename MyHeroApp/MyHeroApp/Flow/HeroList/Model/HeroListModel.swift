//
//  HeroListModel.swift
//  MyHeroApp
//
//  Created by Zhaina Igenbek on 25.03.2025.
//

import Foundation

struct HeroListModel: Identifiable {
    let id: Int
    let title: String
    let description: String
    let heroImage: URL?
}
