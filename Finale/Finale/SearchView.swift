//
//  ProfilV.swift
//  Solidarity
//
//  Created by VIKKI on 15/03/2021.
//

import SwiftUI

struct Result: Identifiable {
    let id: Int
    let name: String
    
}
struct SearchView: View {
    @State var searchText: String = ""
    @State var searchStatus: Bool = false
    @State var resultOff: Bool = false
    @State var resultList:[Result] = [
        Result(id: 0, name: "pommes")]
    @State var resultOn:[Result] = []
    var body: some View {
        NavigationView {
            VStack{
                SearchBar(text: $searchText)
                Spacer()
                Button(action: {
                    self.searchStatus = true
                    addresult()
                }, label: {
                    HStack {
                        Spacer()
                        Text(searchStatus ? "Recherche lancée" : "Lancer la recherche")
                            .frame(width: 300 , height: 20, alignment: .center)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Color(.systemOrange))
                            .cornerRadius(10)
                        Spacer()
                    }
                }).disabled(searchStatus)
                
                Spacer()
                List(resultOn) { result in
                    HStack {
                        Text(result.name)
                            .disabled(resultOff)
                    }
                }
            }
            .navigationBarTitle(Text("Rechercher"))
            
        }
    }
    func addresult() {
        if let randomResult = resultList.randomElement() {
            resultOn.append(randomResult)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
