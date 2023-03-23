//
//  RecipeAddView.swift
//  RecipeList
//
//  Created by Nick Jüttner on 20.03.23.
//

import SwiftUI

struct RecipeAddView: View {
    
    @EnvironmentObject var model:RecipeModel
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Add a new recipe")
            
            // Add recipe form goes here
            
            Button("Save") {
                // Save new recipe
                isPresented = false
            }
            
            Button("Cancel") {
                isPresented = false
            }
            .foregroundColor(.red)
        }
    }
    init(isPresented: Binding<Bool> = .constant(true)) {
        _isPresented = isPresented
    }
}

struct RecipeAddView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeAddView()
    }
}
