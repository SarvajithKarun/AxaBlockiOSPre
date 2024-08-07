//
//  GetStartedScreen.swift
//  AxaBlockUI
//
//  Created by Sarvajith Karun on 6/19/24.
//

import SwiftUI

struct GetStartedScreen: View {
    @State private var fullName = ""
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
            
            Text("Create an Account")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Thanks for joining us!")
                .font(.callout)
                .fontWeight(.light)
            
            TextField("Enter your full name", text: $fullName)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.purple, lineWidth: 2)
                )
                .padding()
                .onChange(of: fullName) {
                    fullName = fullName.localizedCapitalized
                }
            
            TextField("Enter your email", text: $email)
                .keyboardType(.emailAddress)
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
                Text("Join Us!")
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
        .padding()
    }
}

struct GetStartedScreen_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedScreen()
    }
}
