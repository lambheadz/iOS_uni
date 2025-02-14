//
//  GoalsView.swift
//  AboutMe
//
//  Created by Zhaina Igenbek on 14.02.2025.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                GoalItem(image: "goal1", title: "Go to Monaco GP", timeline: "25.05.2025", description: "Legendary race in fabulous place. What can be better that this for Formula1 fan?!")
                GoalItem(image: "goal2", title: "Get the dream car", timeline: "2026", description: "Lots of people who teach financial literacy say not to spend money on fancy staff. But what is the point of money if it doesn't make your childhood dream come true?")
                GoalItem(image: "goal3", title: "Travel with parents", timeline: "2027", description: "Seeing people who raised you exploring new sides of world. I want to observe my parents like observing new places.")
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
        }
        .navigationTitle("Goals")
    }
}

struct GoalItem: View {
    var image: String
    var title: String
    var timeline: String
    var description: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(10)
            
            Text(title)
                .font(.headline)
            
            Text("Timeline: \(timeline)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(description)
                .font(.body)
                .padding(.top, 5)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
