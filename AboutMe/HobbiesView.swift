//
//  HobbiesView.swift
//  AboutMe
//
//  Created by Zhaina Igenbek on 14.02.2025.
//

import SwiftUI

struct HobbiesView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HobbyDetailView(hobby: "Cars & Racing 🏎️", image: "hobby1", description: "I grew up watching cars and people around me driving cars. My dad's career was always connected with cars, driving or constructing. I watched him and somehow tried to be involved in it. Not only my dad, my whole family is into cars. But I happened to love fast cars and bolides that move like flash.")) {
//                    HobbyRow(hobby: "Cars & Racing")
                    HobbyRow(hobby: "hobby1:  🏎️")
                }
                
                NavigationLink(destination: HobbyDetailView(hobby: "Cooking 🥘", image: "hobby2", description: "When I lived with my parents I considered cooking as a mandatory part of day. Even some time it became unpleasing. However, now cooking is new type of relaxation for me. But I fancy outcome more 😁")) {
//                    HobbyRow(hobby: "Cooking")
                    HobbyRow(hobby: "hobby2:  🥘")
                }
                
                NavigationLink(destination: HobbyDetailView(hobby: "Watching videos 🎞️", image: "hobby3", description: "In the age of digital treasures, content plays vital role in our pecuniary life. Some 'consious' people might call me 'brain-rotten', but I find a fration of content in the Internet quite pleasing. Starting from vlogs of Casey Neistat, finished with funny Instagram reels, I sometimes find my joy.")) {
//                    HobbyRow(hobby: "Watching videos")
                    HobbyRow(hobby: "hobby3:  🎞️")
                }
                
            }
            .navigationTitle("Hobbies")
        }
    }
}

struct HobbyRow: View {
    var hobby: String
    
    var body: some View {
        HStack {
            Text(hobby)
                .font(.headline)
            Spacer()
//            Image(systemName: "chevron.right")
        }
        .padding()
    }
}

struct HobbyDetailView: View {
    var hobby: String
    var image: String
    var description: String
    
    @State private var showEmoji = false
    
    var body: some View {
        VStack {
            if showEmoji {
                Text("⭐️")
                    .font(.system(size: 50))
                    .transition(.scale)
            }
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()
            
            Text(hobby)
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Show Emoji") {
                withAnimation {
                    showEmoji.toggle()
                }
            }
            .padding()
            .background(Color.white)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }
}
