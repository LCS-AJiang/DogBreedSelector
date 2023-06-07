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
            .font(.body)
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .clipShape(Capsule())
    }
}
