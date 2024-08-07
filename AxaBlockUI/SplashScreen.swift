//
//  ContentView.swift
//  AxaBlockUI
//
//  Created by Sarvajith Karun on 6/19/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image("AxaBlockLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 150)
                
                Text("Hey There!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Text("Welcome to AxaBlock, your personalized tool to help you stop scrolling!")
                    .font(.callout)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                NavigationLink(destination: GetStartedScreen()) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 20)
                        .frame(width: 350)
                        .background(Color.purple)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                }
                
                HStack {
                    Text("Already have an account with us?")
                        .font(.callout)
                    
                    NavigationLink(destination: LoginScreen()) {
                        Text("Login")
                            .font(.callout)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 10)
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
