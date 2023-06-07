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
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 40, height: 40)
                
                Spacer()
                }
                
            .border(.red)
            .padding()
            
            HStack {
                bubbleText(text: "Friendly")
                bubbleText(text: "Sensitive")
                bubbleText(text: "Playful")
                bubbleText(text: "High Intelligent")
    //            Text("Outgoing")
    //            Text("Active")
    //            Text("Assistance")
    //            Text("Energetic")
    //            Text("Loyal")
    //            Text("Affectionate")
                
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
