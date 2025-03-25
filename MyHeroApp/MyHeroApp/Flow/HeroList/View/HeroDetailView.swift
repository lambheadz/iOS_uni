//
//  HeroDetailView.swift
//  MyHeroApp
//
//  Created by Zhaina Igenbek on 25.03.2025.
//

import SwiftUI

import SwiftUI

struct HeroDetailView: View {
    let hero: HeroEntity
    
    var body: some View {
        VStack {
            AsyncImage(url: hero.heroImageUrl) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                default:
                    Color.gray
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                }
            }
            .padding()

            Text(hero.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            VStack(alignment: .leading, spacing: 8) {
                Text("Power Stats")
                    .font(.headline)
                    .padding(.bottom, 4)

                HStack {
                    Text("Intelligence: \(hero.powerStats.intelligence)")
                    Spacer()
                    Text("Strength: \(hero.powerStats.strength)")
                }
                
                HStack {
                    Text("Speed: \(hero.powerStats.speed)")
                    Spacer()
                    Text("Durability: \(hero.powerStats.durability)")
                }

                HStack {
                    Text("Power: \(hero.powerStats.power)")
                }
            }
            .padding()

            VStack(alignment: .leading, spacing: 8) {
                Text("Biography")
                    .font(.headline)
                    .padding(.bottom, 4)

                Text("Race: \(hero.appearance.race ?? "Unknown")")
                Text("Gender: \(hero.appearance.gender ?? "Unknown")")
                Text("Place of Birth: \(hero.biography.placeOfBirth ?? "Unknown")")
                Text("Height: \(hero.appearance.height?.joined(separator: ", ") ?? "Unknown")")
                Text("Weight: \(hero.appearance.weight?.joined(separator: ", ") ?? "Unknown")")
            }
            .padding()

            Spacer()
        }
        .padding()
        .navigationTitle(hero.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//god
