//
//  LoginScreen.swift
//  AxaBlockUI
//
//  Created by Sarvajith Karun on 6/20/24.
//

import SwiftUI

struct LoginScreen: View {
    @State private var fullName = "John Doe"
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack {
            Image("AxaBlockLogo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 150)
                .padding(.bottom, 15)
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Welcome back!")
                .font(.callout)
                .fontWeight(.light)
            
            TextField("Enter your email", text: $email)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.purple, lineWidth: 2)
                )
                .padding()
            
            VStack {
                ZStack(alignment: .trailing) {
                    if isPasswordVisible {
                        TextField("Enter your password", text: $password)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                            .padding()
                    } else {
                        SecureField("Enter your password", text: $password)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.purple, lineWidth: 2)
                            )
                            .padding()
                    }
                    
                    HStack {
                        Spacer()
                        Toggle(isOn: $isPasswordVisible) {
                            
                        }
                        .padding(.all, 25)
                    }
                }
                .padding(.bottom, 5)
            }
            
            NavigationLink(destination: HomeScreen(username: fullName)) {
                Text("Login")
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
                Text("Don't have an account with us?")
                    .font(.callout)
                
                NavigationLink(destination: GetStartedScreen()) {
                    Text("Sign Up")
                        .font(.callout)
                        .foregroundColor(.blue)
                }
            }
            .padding(.top, 10)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
