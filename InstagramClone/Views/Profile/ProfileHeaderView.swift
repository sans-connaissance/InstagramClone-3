//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @State var selectedImage: UIImage?
    @State var userImage: Image?
    @State var imagePickerRepresented = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                ZStack {
                    if let imageURL = AuthViewModel.shared.currentUser?.profileImageURL {
                        KFImage(URL(string: imageURL))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.leading, 16)
                    }
                    else {
                        
                        Button {
                            self.imagePickerRepresented = true
                        } label: {
                            Image("profile-placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .padding(.leading, 16)
                        }.sheet(isPresented: $imagePickerRepresented) {
                            //onDismiss
                            loadImage()
                        } content: {
                            ImagePicker(image: $selectedImage)
                        }



                    }
                }

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


extension ProfileHeaderView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        userImage = Image(uiImage: selectedImage)
    }
    
}
