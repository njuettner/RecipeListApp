//
//  ContentView.swift
//  RecipeList
//
//  Created by Nick Jüttner on 19.03.23.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationView{
            VStack( alignment: .leading) {
                
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView{
                    
                    LazyVStack(alignment: .leading){
                        
                        ForEach(model.recipes) {
                            r in
                            NavigationLink(destination: RecipeDetailView(recipe: r),
                                           label: {
                                
                                HStack(spacing: 20.0) {
                                    Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center)
                                        .clipped().cornerRadius(5)
                                    Text(r.name)
                                        .foregroundColor(.black)
                                }})
                        }
                    }
                }
            }
        }.navigationBarHidden(true)
            .padding(.leading)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeModel())
    }
}
