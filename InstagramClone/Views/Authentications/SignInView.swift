//
//  SignInView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct SignInView: View {
    
    //the demo uses .navigationBarHidden(true) on each navigation link in order to hide nested NavigationViews. I don't think this is correct. Should be refactored later, and I'm not going to implement it here.
    
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State var email = ""
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
                    
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "person")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    HStack {
                        Spacer()
                        NavigationLink {
                            ForgotPasswordView(email: $email)
                        } label: {
                            Text("Forgot Password")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.gray)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }

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

