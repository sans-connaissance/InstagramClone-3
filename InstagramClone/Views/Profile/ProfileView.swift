//
//  ProfileView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                    .padding()
                PostGridView()
                
            }
            .padding(.top)
            
        }
    }
}
