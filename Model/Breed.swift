//
//  Breed.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-08.
//

import Blackbird
import Foundation

struct Breed: BlackbirdModel {
    
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var characteristics: String
    @BlackbirdColumn var size: String
    
}
