//
//  pictureText.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-06.
//

import SwiftUI

struct pictureText: View {
    
    // MARK: Stored properties
    let pictureOfDogs: String
    let characteristics: [String]
    
    
    var body: some View {
        VStack {
            Image(pictureOfDogs)
                .resizable()
                .scaledToFit()
            VStack {
                ForEach(characteristics, id: \.self) { characteristic in
                    bubbleText(text: characteristic)
                }
            }
        }
    }
}

struct pictureText_Previews: PreviewProvider {
    static var previews: some View {
        pictureText(
        pictureOfDogs: "AlaskanMalamute", characteristics: ["friendly", "energetic", "loyal", "affectionate"])
    }
}
