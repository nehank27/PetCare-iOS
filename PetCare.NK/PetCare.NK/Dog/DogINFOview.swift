//
//  DogINFOview.swift
//  PetCare.NK
//
//  Created by Nehan K on 3/30/23.
//

import SwiftUI

struct DogINFOview: View {
    
    var videos: [DogVideo] = DogVideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink {
                    DogDetailView(video: video)
                } label: {
                    HStack(alignment: .center) {
                        Spacer()
                        Text(video.categoryTitle)
                            .font(.custom("American Typewriter", size: 44))
                            .padding(.top, 50)
                            .padding(.bottom, 48)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .resizable()
                            .frame(width: 30, height: 20)
                        
                        
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Dog Info")
                                .padding(.top, 10)
                                .font(.custom("American Typewriter", size: 50))
                        }
                        
                    }
                }
        }
        
        
    }
}


struct DogINFOview_Previews: PreviewProvider {
    static var previews: some View {
        DogINFOview()
    }
}
