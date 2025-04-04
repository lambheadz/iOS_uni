//
//  ContentView.swift
//  Pinterest
//
//  Created by Zhaina Igenbek on 04.04.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ImagesViewModel()
    private let columns = [
//        GridItem(.adaptive(minimum: 150), spacing: 10)
        GridItem(.flexible(minimum: 150, maximum: 300)),
        GridItem(.flexible(minimum: 150, maximum: 300))
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.images) { model in
                        model.image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: CGFloat.random(in: 100 ... 300))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            
            Button("Get 5 images") {
                viewModel.getImages()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .padding(.horizontal, 10)
    }
    
}
#Preview {
    ContentView(viewModel: ImagesViewModel())
}
