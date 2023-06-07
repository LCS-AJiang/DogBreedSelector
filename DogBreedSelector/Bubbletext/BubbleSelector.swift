//
//  BubbleSelector.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-06.
//

import SwiftUI

struct bubbleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding(6)
            .foregroundColor(.white)
            .background(.gray)
            .clipShape(Capsule())
    }
}

struct bubbleText2: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding(10)
            .foregroundColor(.white)
            .background(.gray)
            .clipShape(Capsule())
    }
}
