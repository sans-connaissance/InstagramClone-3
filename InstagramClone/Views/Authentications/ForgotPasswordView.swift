//
//  ForgotPasswordView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/9/21.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Binding var email: String
    
    init(email: Binding<String>) {
        self._email = email
    }
    
    var body: some View {
        
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
                
                
                
            }
            
            
            
            Button {
                
            } label: {
                Text("Reset Password")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            
            Spacer()
            
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(email: .constant("davemalicke@gmail.com"))
    }
}
