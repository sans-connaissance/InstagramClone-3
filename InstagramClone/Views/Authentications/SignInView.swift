//
//  SignInView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Forgot Password")
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.gray)
                .padding(.top)
                .padding(.trailing, 28)
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
