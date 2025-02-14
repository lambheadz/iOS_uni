//
//  ContentView.swift
//  AboutMe
//
//  Created by Zhaina Igenbek on 14.02.2025.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            HobbiesView()
                .tabItem {
                    Label("Hobby", systemImage: "heart.fill")
                }
            
            GoalsView()
                .tabItem {
                    Label("Goals", systemImage: "flag.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
