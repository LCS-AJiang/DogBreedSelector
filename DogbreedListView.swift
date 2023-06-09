//
//  DogbreedListView.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-09.
//

import Blackbird
import SwiftUI

struct DogbreedListView: View {
    
    // MARK: Stored properties
    
    // The list of dog breeds, as read from the database
    @BlackbirdLiveModels({ db in
        try await Breed.read(from: db)
    }) var breeds
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            List(breeds.results) { currentBreed in
                pictureText(name: currentBreed.name,
                            pictureOfDogs: currentBreed.picture,
                            characteristics: currentBreed.characteristics)
            }
            .navigationTitle("Dog Breeds")
        }
    }
}

struct DogbreedListView_Previews: PreviewProvider {
    static var previews: some View {
        DogbreedListView()
        // Make the database available to all other view through the environemtn
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
    
