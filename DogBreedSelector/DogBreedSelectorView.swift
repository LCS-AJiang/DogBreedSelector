//
//  ContentView.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-01.
//

import SwiftUI

struct DogBreedSelectorView: View {
    
    var body: some View {
        VStack {
            HStack (spacing: 5){
                Image(systemName: "house.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 40, height: 40)
                
                
                ZStack {
                    Rectangle()
                        .stroke(Color.black)
                        .frame(height: 50)
                }
                
            }
            Divider()
                .frame(height: 1)
                .overlay(Color.black)
                .edgesIgnoringSafeArea(.horizontal)
            
            //            .border(.red)
            //.padding(.horizontal)
            
            VStack {
                    HStack {
                    bubbleText2(text: "Friendly")
                    bubbleText2(text: "Sensitive")
                    bubbleText2(text: "Playful")
                    bubbleText2(text: "High Intelligent")
                    
                
            }
                HStack {
                    bubbleText(text: "Outgoing")
                                bubbleText(text: "Active")
                                bubbleText(text: "Assistance")
                                bubbleText(text: "Energetic")
                    
                }
                HStack {
                    bubbleText(text: "Loyal")
                    bubbleText(text: "Affectionate")
                }
            }
            .lineLimit(2)
            
            VStack (spacing: 20){
                Divider()
                    .frame(height: 3)
                    .overlay(Color.black)
                
                Text("HIGHLY RECOMMENDED")
                    .font(.title)
                    .bold()
                
                Divider()
                    .frame(height: 3)
                    .overlay(Color.black)
                HStack {
                    pictureText(pictureOfDogs: "LabradorRetriever", characteristics: ["friendly", "outgoing", "active", "assistance"])
                    
                    pictureText(pictureOfDogs: "LabradorRetriever", characteristics: ["friendly", "outgoing", "active", "assistance"])
                    
                }
                .font(.caption2)
            }
            .border(.green)
            .padding(.vertical)
            .edgesIgnoringSafeArea(.horizontal)
            
            Spacer()
        }
        .border(.purple)
    }
}

struct DogBreedSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DogBreedSelectorView()
    }
}
