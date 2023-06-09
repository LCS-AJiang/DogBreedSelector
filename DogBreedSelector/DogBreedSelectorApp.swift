//
//  DogBreedSelectorApp.swift
//  DogBreedSelector
//
//  Created by Audrey Jiang on 2023-06-01.
//

import SwiftUI

@main
struct DogBreedSelectorApp: App {
    var body: some Scene {
        WindowGroup {
            DogBreedSelectorView()
            // Make the database available to all other view through the environment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
