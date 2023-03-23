//
//  RecipeTabView.swift
//  RecipeList
//
//  Created by Nick Jüttner on 20.03.23.
//

import SwiftUI

struct RecipeTabView: View {
    
    @EnvironmentObject var model:RecipeModel
   
    @State var isAddRecipePresented = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            TabView {
                RecipeFeaturedView().tabItem {
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
                    }
                    .badge(model.recipes.count)
            }
        
            
            // NavigationView with a single tab for adding a recipe
            NavigationView {
                RecipeAddView()
            }
    
            .cornerRadius(16)
            .shadow(radius: 8)
            .padding()
            .offset(y: isAddRecipePresented ? 0 : UIScreen.main.bounds.height)
            .animation(.easeInOut)
            
            // Plus button to present the RecipeAddView
            Button(action: {
                isAddRecipePresented = true
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .foregroundColor(.green)
            })
            .padding()
            .sheet(isPresented: $isAddRecipePresented) {
                RecipeAddView(isPresented: $isAddRecipePresented)
            }
        }
    }
}


struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView().environmentObject(RecipeModel())
    }
}
