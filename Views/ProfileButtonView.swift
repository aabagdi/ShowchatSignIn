//
//  ProfileButtonView.swift
//  ShowchatProfilePic
//
//  Created by Aadit Bagdi on 12/3/23.
//

import SwiftUI
import PhotosUI

struct ProfileButtonView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    var body: some View {
        PhotosPicker(selection: $avatarItem, matching: .images) {
            ZStack {
                Circle()
                    .fill(.gray)
                    .opacity(0.65)
                    .frame(width: 250)
                Text("+")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                if let avatarImage {
                    avatarImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250)
                        .clipShape(Circle())
                }
            }
            .onChange(of: avatarItem) { _ in
                Task {
                    if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                        if let uiImage = UIImage(data: data) {
                            avatarImage = Image(uiImage: uiImage)
                            return
                        }
                    }

                    print("Failed")
                }
            }
        }
    }
}

#Preview {
    ProfileButtonView()
}
