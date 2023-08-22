//
//  DogVIDEOS.swift
//  PetCare.NK
//
//  Created by Nehan K on 5/8/23.
//

import SwiftUI

struct DogVideo: Identifiable{
    let id = UUID()
    let imageName: String
    let categoryTitle: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct DogVideoList {
    
    static let topTen = [
        DogVideo(imageName: "dog thumbnail general",
              categoryTitle: "General",
              title: "10 Things I Wish I Knew Before Getting a Puppy",
              description: "Today I'm sharing 10 things I wish I knew before getting a puppy! The first few weeks/months are the most vital for puppy growth and to get the puppy used to the new area/routine!",
              viewCount: 581861,
              uploadDate: "May 1, 2019",
              url: URL(string: "https://youtu.be/AIL-6ADJObM")!),
        
        DogVideo(imageName: "dog thumgnsil feeding",
              categoryTitle: "Feeding",
              title: "How to Create a Healthy Feeding Routine for Your Dog",
              description: "In this video, I will go over what kind of food to feed your dog, and go over the dietary needs of a dog. I will also cover how much food, and at what times to feed your cat.",
              viewCount: 12916,
              uploadDate: "October 5, 2020",
              url: URL(string: "https://youtu.be/ilgM5IYjIG8")!),
        
        DogVideo(imageName: "dog thumbnail training",
              categoryTitle: "Training",
              title: "Dog Training 101: How to teach ANY DOG the Basics",
              description: "In today's video we are going to talk about Basic Dog Training Tips. Some topics we will cover include, sit, lie down, clicker training.",
              viewCount: 7489723,
              uploadDate: "May 16, 2013",
              url: URL(string: "https://youtu.be/FAb9SebaMQw")!),
              
        DogVideo(imageName: "dog thumbnail behaviors",
              categoryTitle: "Behaviors",
              title: "9 Weird Dog Behaviors Explained ",
              description: "In this video we will talk about 9 weird things that dogs do and the meaning behind them. It is important to identify these behaviors so we can be closer with our pets, and understand what they are thinking, to keep them safe, and know what they are thinking/feeling.",
              viewCount: 4670761,
              uploadDate: "December 26, 2020,",
              url: URL(string: "https://youtu.be/AXfszibgDFI")!),
        
        
    ]
}
