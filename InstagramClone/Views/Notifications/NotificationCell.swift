//
//  NotificationCell.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("tedmosby")
                .font(.system(size: 14, weight: .semibold)) +
            Text(" has followed you.")
                .font(.system(size: 15)) +
            Text(" 2H")
                .foregroundColor(.gray)
                .font(.system(size: 12))
            
            Spacer()
            
            Button {

            } label: {
                Text("Follow")
                    .font(.system(size: 14, weight: .semibold))
                    .frame(width: 100, height: 32)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(3)
                    .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 1)
                    )
            }

            

            
            
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
