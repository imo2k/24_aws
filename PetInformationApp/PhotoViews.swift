//
//  PhotoViews.swift
//  PetInformationApp
//
//  Created by o2k on 4/5/24.
//

import SwiftUI

struct PhotoViews: View {
    var body: some View {
        ScrollView(.horizontal) { // ScrollView의 기본 값은 V
            HStack {
                DogImageView(imageName: "dog1", borderColor: .mint)
                DogImageView(imageName: "dog2", borderColor: .blue)
                DogImageView(imageName: "dog3", borderColor: .yellow)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15)
                .fill(Color.yellow)
                .opacity(0.2)
                .shadow(radius: 5))
        }
        .scrollIndicators(.hidden)
    }
}

struct DogImageView: View {
    
    var imageName: String
    var borderColor: Color
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 160, height: 160)
            .overlay(Rectangle().stroke(borderColor, lineWidth: 4))
        
    }
}





#Preview {
    PhotoViews()
}
