//
//  HomeScreen.swift
//  AxaBlockUI
//
//  Created by Sarvajith Karun on 6/20/24.
//

import SwiftUI

struct HomeScreen: View {
    let username: String
    @State private var isJoinActive: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Welcome back,")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(username)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    
                }
                
                Spacer()
                
                Image("UserProfile")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.purple, lineWidth: 5)
                    )
                Spacer()
            }
            .padding()
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(username: "John Doe")
    }
}
