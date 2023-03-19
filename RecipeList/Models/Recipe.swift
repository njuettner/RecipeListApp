//
//  Recipe.swift
//  RecipeList
//
//  Created by Nick Jüttner on 19.03.23.
//

import Foundation


class Recipe: Identifiable, Decodable {
    
    var id:UUID? = UUID()
    var name:String
    var image:String
    var featured:Bool
    var description:String
    var prepTime:String
    var cookTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
