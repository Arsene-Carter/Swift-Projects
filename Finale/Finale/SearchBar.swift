//
//  SearchBar.swift
//  Solidarity
//
//  Created by VIKKI on 15/03/2021.
//

import SwiftUI

struct SearchBar: View {
    // @Binding = link between a property that stores data, and a view that displays and changes the data
    // variable for the binding of the search text
    @Binding var text: String
    
    // variable for storing the state of the search field (editing or not)
    @State var isEditing = false
        
    var body: some View {
        HStack {
            TextField("Saisir un mot clé", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.orange)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        // if user is on input field
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                // when the user taps the search field
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Annuler")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}

