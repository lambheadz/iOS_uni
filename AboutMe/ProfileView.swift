//
//  ProfileView.swift
//  AboutMe
//
//  Created by Zhaina Igenbek on 14.02.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("zhaina")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 150, height: 150)
                .padding(.top, 20)
            
            Text("Igenbek Zhaina")
                .font(.title)
                .bold()
            Text("25.05.2005")
                .font(.subheadline)
            Text("Shymkent → Almaty")
                .font(.subheadline)
            Text("Hello,welcome to my introduction app 💌. I am a 3rd year student of KBTU. I hope this project helps you to know me better😉")
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
    }
}
