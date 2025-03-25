//
//  HeroListView.swift
//  MyHeroApp
//
//  Created by Zhaina Igenbek on 25.03.2025.
//

import SwiftUI

struct HeroListView: View {
    @StateObject var viewModel: HeroListViewModel
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            TextField("Search heroes...", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Divider().padding(.bottom, 16)
            
            listOfHeroes()
        }
        .task {
            await viewModel.fetchHeroes()
        }
    }

    var filteredHeroes: [HeroListModel] {
        if searchText.isEmpty {
            return viewModel.heroes
        } else {
            let filtered = viewModel.heroes.filter { $0.title.lowercased().contains(searchText.lowercased()) }
            print("Filtered Heroes: \(filtered)")
            return filtered
        }
    }


    @ViewBuilder
    private func listOfHeroes() -> some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(filteredHeroes) { model in
                    heroCard(model: model)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                }
            }
        }
    }

    @ViewBuilder
    private func heroCard(model: HeroListModel) -> some View {
        HStack {
            AsyncImage(url: model.heroImage) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.trailing, 16)
                default:
                    Color.gray
                        .frame(width: 100, height: 100)
                        .padding(.trailing, 16)
                }
            }
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.headline)
                Text(model.description)
                    .font(.subheadline)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            viewModel.routeToDetail(by: model.id)
        }
    }
}
