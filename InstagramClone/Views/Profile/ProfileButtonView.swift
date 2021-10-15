//
//  ProfileButtonView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/14/21.
//

import SwiftUI

struct ProfileButtonView: View {
    @ObservedObject var profileViewModel: ProfileViewModel
    
    
    var body: some View {
        
        if profileViewModel.user.isCurrentUser {
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.system(size: 14, weight: .semibold))
                    .frame(width: 360, height: 36)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1))
            }

        } else {
            HStack(spacing: 16) {
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }

                Button {
                    
                } label: {
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1))
                }
            }
        }
    }
}

