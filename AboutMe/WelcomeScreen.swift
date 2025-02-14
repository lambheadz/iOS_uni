//
//  WelcomeScreen.swift
//  AboutMe
//
//  Created by Zhaina Igenbek on 14.02.2025.
//

import SwiftUI

struct WelcomeView: View {
    @AppStorage("hasSeenWelcome") private var hasSeenWelcome: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello! Welcome to my introduction app 💌")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding()
            
            Button( action: {
                hasSeenWelcome = true
            }
            ) {
                Text("Let's get started!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}
