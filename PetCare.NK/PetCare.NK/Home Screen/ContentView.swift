//
//  ContentView.swift
//  PetCare.NK
//
//  Created by Nehan K on 2/13/23.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Text("PetCare")
                    .fontWeight(.bold)
                    .font(.custom("American Typewriter", size:60))
                    .multilineTextAlignment(.center)
                Spacer()
                Image("transparentcat")
                    .resizable()
                    .frame(width: 250.0, height: 380.0)
                    .position(x: 90, y: 120)
                Image("transparentdoggy")
                    .resizable()
                    .frame(width: 270, height: 330)
                    .position(x: 305, y: 40)
                Text("Choose your pet")
                    .font(.custom("American Typewriter", size: 40))
                    .position(x:193, y:150)
                NavigationLink(destination: {
                    CatView()
                }, label: {
                    Image("catsil")
                        .resizable()
                        .frame(width: 110, height: 110)
                        .position(x:100, y: 120)
                    
                })
                NavigationLink(destination: {
                    DogView()
                }, label: {
                    Image("dogsil")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .position(x: 280, y: -10)
                    
                })
                

                
            }
            
    
            
        
            
            
            
        }
    }
    
    
    struct ButtonView: View {
        
        var body: some View {
            NavigationView {
                VStack {
                    NavigationLink("Cat", destination: CatView())
                }
            }
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
