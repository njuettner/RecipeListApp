//
//  RecipeModel.swift
//  RecipeList
//
//  Created by Nick Jüttner on 19.03.23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
    
    func addRecipe(recipe:Recipe) {
        recipes.append(recipe)
    }
}
