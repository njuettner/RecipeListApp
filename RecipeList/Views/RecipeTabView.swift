//
//  RecipeTabView.swift
//  RecipeList
//
//  Created by Nick Jüttner on 20.03.23.
//

import SwiftUI

struct RecipeTabView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action: { print("Hello") } ) {
                   Image(systemName: "plus.circle.fill")
                    Text("Add Recipe")
                }
                Spacer()
            }
            TabView {
                Text("Featured View").tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                RecipeListView()
                    .tabItem {
                        VStack {
                            Image(systemName: "list.bullet")
                            Text("List")
                        }
                    }.badge(model.recipes.count)
            }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
