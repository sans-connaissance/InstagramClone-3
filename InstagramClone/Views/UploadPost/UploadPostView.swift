//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/4/21.
//

import SwiftUI

struct UploadPostView: View {
    
    @State private var selectedImage: UIImage?
    @State var postImage: Image
    @State var captionText = ""
    
    var body: some View {
        Image(systemName: "plus.circle")
            .resizable()
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipped()
            .padding(.top)
            .foregroundColor(.black)
    }
}


