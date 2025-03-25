//
//  HeroRouter.swift
//  MyHeroApp
//
//  Created by Zhaina Igenbek on 17.03.2025.
//

import UIKit
import SwiftUI

final class HeroRouter {
    var rootViewController: UINavigationController?

    func showDetails(for id: Int) {
        Task {
            do {
                let hero = try await HeroServiceImp().fetchHeroDetails(for: id)
                let detailView = HeroDetailView(hero: hero)
                let detailVC = UIHostingController(rootView: detailView)
                
                rootViewController?.pushViewController(detailVC, animated: true)
            } catch {
                print("Error fetching hero details: \(error.localizedDescription)")
            }
        }
    }
}
