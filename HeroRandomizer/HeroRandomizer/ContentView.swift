//
//  ContentView.swift
//  HeroRandomizer
//
//  Created by Zhaina Igenbek on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            AsyncImage(url: viewModel.selectedHero?.imageUrl) { phase in
                switch phase {
                case .empty:
                    Color.teal.frame(height: 300)
                case .success(let image):
                    image.resizable().frame(height: 300).cornerRadius(15)
                case .failure:
                    Color.red.frame(height: 300)
                }
            }
            .padding(32)

            if let hero = viewModel.selectedHero {
                VStack(alignment: .center, spacing: 8) {
                    Text("Name: \(hero.name)")
                        .font(.title).bold()
                    Text("Gender: \(hero.appearance.gender)")
                    Text("Race: \(hero.appearance.race ?? "Unknown")")
                    Text("Height: \(hero.appearance.height.joined(separator: ", "))")
                    Text("Weight: \(hero.appearance.weight.joined(separator: ", "))")
                    Text("Intelligence: \(hero.powerstats.intelligence)")
                    Text("Power: \(hero.powerstats.power)")
                    Text("Strength: \(hero.powerstats.strength)")
                    Text("Speed: \(hero.powerstats.speed)")
                    Text("Durability: \(hero.powerstats.durability)")
                    Text("Place of Birth: \(hero.biography.placeOfBirth)")
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                .padding(.horizontal)
            }

            Spacer()

            Button {
                Task {
                    await viewModel.fetchHero()
                }
            } label: {
                Text("Roll Hero")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(30)
            }
        }
    }
}

#Preview {
    let viewModel = ViewModel()
    ContentView(viewModel: viewModel)
}
