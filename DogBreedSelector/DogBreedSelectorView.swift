//
//  ContentView.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-01.
//

import SwiftUI

struct DogBreedSelectorView: View {
    
    // The search term the user has provided
    @State var searchText = ""
    
    // MARK: properties
    var body: some View {
        
        VStack {
            
            HStack (spacing: 5){
                Image(systemName: "pawprint")
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
            
            
            VStack {
                HStack {
                    bubbleText2(text: "Friendly")
                    bubbleText2(text: "Sensitive")
                    bubbleText2(text: "Playful")
                    bubbleText2(text: "Intelligent")
                    
                    
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
                    bubbleText(text: "Mischievous")
                    bubbleText(text: "Alert")
                }
                
                HStack {
                    bubbleText(text: "Smart")
                    bubbleText(text: "Vigilant")
                    bubbleText(text: "Adaptable")
                    bubbleText(text: "Courageous")
                }
                
                HStack {
                    bubbleText(text: "Confident")
                    bubbleText(text: "Devoted")
                    bubbleText(text: "Versatile")
                    bubbleText(text: "Gentle")
                }
                
                HStack {
                    bubbleText(text: "Graceful")
                    bubbleText(text: "Calm")
                    bubbleText(text: "Barkless")
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
                        pictureText(
                            name: "Labrador Retriever",
                            pictureOfDogs: "LabradorRetriever",
                            characteristics: "friendly, outgoing, active, assistance")
                        
                        pictureText(
                            name: "Golden Retriever",
                            pictureOfDogs: "GoldenRetriever",
                            characteristics: "devoted, intelligent, affectionate, friendly")
                        
                        
                    }
                    .font(.caption2)
                }
                .padding(.vertical)
                .edgesIgnoringSafeArea(.horizontal)
                
                Spacer()
            }
            
            
        }
    }
    
    
    struct DogBreedSelectorView_Previews: PreviewProvider {
        static var previews: some View {
            DogBreedSelectorView()
        }
    }
}
