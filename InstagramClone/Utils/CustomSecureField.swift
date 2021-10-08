//
//  CustomSecureField.swift
//  InstagramClone
//
//  Created by David Malicke on 10/7/21.
//

import SwiftUI

struct CustomSecureField: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment:.leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(.black)
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                
                SecureField("", text: $text)
                
            }
            .padding(.leading)
            
            
        }
        .frame(width: 360, height: 50)
        .background(
            ZStack {
                Color(.init(white:0.9, alpha: 0.7))
                    .cornerRadius(8)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.init(white: 0.7, alpha: 0.7)), lineWidth: 1) )
            }
        )
    }
}


