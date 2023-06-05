//
//  ContentView.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-01.
//

import SwiftUI

struct DogBreedSelectorView: View {
    
    let tags = String
    @State var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 40, height: 40)
                
                Spacer()
                
                NavigationStack {
                    List {
                        ForEach(searchResult, id: \.self) { name in
                            NavigationLink {
                                Text (tags)
                            } label: {
                                Text (tags)
                            }
                        }
                    }
                    .navigationTitle("Contacts")
                }
                .searchable(text: $searchText)
            }
            .border(.red)
            .padding()

            VStack (spacing: 20){
                Divider()
                    .frame(height: 5)
                    .overlay(Color.black)
                
                Text("HIGHLY RECOMMENDED")
                    .font(.title)
                    .bold()
                
                Color.black
                    .frame(width: 400, height: 1)
            }
            .border(.green)
            .padding()
            
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
