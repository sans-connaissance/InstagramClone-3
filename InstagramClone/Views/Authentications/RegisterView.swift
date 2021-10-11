//
//  RegisterView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var username = ""
    @State var fullname = ""
    @State var password = ""
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    
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
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "pencil")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    
                }
                
                
                
                Button {
                    authViewModel.register(withEmail: email, password: password)
                    
                } label: {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                
                Spacer()
                NavigationLink {
                    SignInView()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14, weight: .semibold))
                        Text("Sign In")
                            .font(.system(size: 14))
                    }
                }
                
            }
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
