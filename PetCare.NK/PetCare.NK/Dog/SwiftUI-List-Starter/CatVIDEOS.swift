//
//  Video.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct CatVideo: Identifiable{
    let id = UUID()
    let imageName: String
    let categoryTitle: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct CatVideoList {
    
    static let topTen = [
        CatVideo(imageName: "cat thumbnail 1",
              categoryTitle: "General",
              title: "Everything You Need For Your Cat",
              description: "So you just adopted a new feline family member? Congratulations! But before you even bring him home, go out now and get these essential items! In this video I will walk you through every essential you should get for your cat!",
              viewCount: 1895148,
              uploadDate: "October 17, 2020",
              url: URL(string: "https://youtu.be/KHmrh6eQ6EQ")!),
        
        CatVideo(imageName: "cat thumbnail 2",
              categoryTitle: "Feeding",
              title: "Cat Food 101, What & How Much To Feed Your Cat",
              description: "In this video, I will go over what kind of food to feed your cat, and go over the dietary needs of a feline. I will also cover how much food, and at what times to feed your cat.",
              viewCount: 53226,
              uploadDate: "December, 9, 2022",
              url: URL(string: "https://youtu.be/wPrOCXGCMpA")!),
        
        CatVideo(imageName: "cat thumbnail 3",
              categoryTitle: "Training",
              title: "Cats 101: Basic Training Tips",
              description: "In today's video we are going to talk about Basic Cat Training Tips. Some topics we will cover, litter box training, end furniture scratching, behavior training, and cat scratching post training.",
              viewCount: 47750,
              uploadDate: "Jan 11, 2021",
              url: URL(string: "https://youtu.be/FAb9SebaMQw")!),
              
        CatVideo(imageName: "cat thumbnail 4",
              categoryTitle: "Behaviors",
              title: "Real Meaning Behind 9 Cat Behaviors Explained",
              description: "In this video we will talk about 9 strange things that cats do and the meaning behind them. It is important to identify these behaviors so we can be closer with our pets, and understand what they are thinking, to keep them safe.",
              viewCount: 7538968,
              uploadDate: "August 13, 2022",
              url: URL(string: "https://youtu.be/S5JqSlAsldQ")!),
        
        
    ]
}
