//
//  RegisterView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            Image("instagram-text-logo")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 180)
                .foregroundColor(.black)
            
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .cornerRadius(10)
                .foregroundColor(.gray)
                .padding(.horizontal, 32)
            
            CustomSecureField(text: $password, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .cornerRadius(10)
                .foregroundColor(.gray)
                .padding(.horizontal, 32)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
