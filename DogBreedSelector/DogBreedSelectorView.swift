//
//  ContentView.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-01.
//

import SwiftUI

struct DogBreedSelectorView: View {
    
    // MARK: Stored properties
//    var filteredItems: [String] {
//
//        if searchText.isEmpty {
//
//            return items
//
//        }; else {
//
//            // Create an empty array
//            var matchingItems: [String] = []
//
//            // Iterate over original array
//            for item in items {
//                if item.contains(searchText) {
//                    if item.characteristics().contains(searchText.characteristics()) 「
//                        matchingItems.append(item)
//                }
//            }
//
//            // Return the array of items that match the search text
//            return matchingItems
//
//        }
//        }
        
    
    // The search term the user has provided
    @State var searchText = ""
    
    // MARK: properties
    var body: some View {
        
        VStack {
            VStack {
                
                NavigationView {
                    
    //                VStack {
    //
    //                    Text("Searching on: \(searchText)")
    //
    //                    List(filteredItems, id: \.self) { currentItem in Text(currentItem)
    //
    //                    }
    //
    //                    .searchable(text: $searchText)
    //
    //                }
                }
                
            }
                
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
                        pictureText(
                            name: "Labrador Retriever",
                            pictureOfDogs: "LabradorRetriever",
                            characteristics: "friendly, energetic, loyal, affectionate")
                        
                        pictureText(
                            name: "Golden Retriever",
                            pictureOfDogs: "GoldenRetriever",
                            characteristics: "friendly, energetic, loyal, affectionate")
                        
                    }
                    .font(.caption2)
                }
                .border(.green)
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
