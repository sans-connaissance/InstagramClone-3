//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading, 16)
                
                Spacer()
                
                HStack(spacing: 16) {
                    UserStats(value: 10, title: "Posts")
                    UserStats(value: 10, title: "Followers")
                    UserStats(value: 10, title: "Following")
                    
                }.padding(.trailing)
                
            }
            
            Text(AuthViewModel.shared.currentUser?.fullname ?? "Oops")
                .font(.system(size: 15, weight: .bold))
                .padding([.leading, .top])
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
