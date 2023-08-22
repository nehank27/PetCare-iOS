//
//  DogDetailView.swift
//  PetCare.NK
//
//  Created by Nehan K on 5/12/23.
//


import SwiftUI

struct DogDetailView: View {
    
    var video: DogVideo
    var body: some View {
        VStack(spacing:20) {
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(video.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: video.url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
        }
    }
}

struct DogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DogDetailView(video: DogVideoList.topTen.first!)
    }
}

