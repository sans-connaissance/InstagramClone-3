//
//  UserStats.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct UserStats: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        Text("\(value)")
            .font(.system(size: 15, weight: .semibold))
        Text(title)
            .font(.system(size: 15))
    }
}

struct UserStats_Previews: PreviewProvider {
    static var previews: some View {
        UserStats(value: 10, title: "Followers")
    }
}
