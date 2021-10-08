//
//  SignInView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct SignInView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image("instagram-text-logo")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 180)
                    .foregroundColor(.black)
                VStack(spacing: -16) {
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    HStack {
                        Spacer()
                        Text("Forgot Password")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.gray)
                            .padding(.top)
                            .padding(.trailing, 28)
                        
                    }
                    
                    
                }
                
                
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                
                NavigationLink {
                    RegisterView()
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    

                }
                Spacer()
                
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

