//
//  FiltresView.swift
//  Filtres
//
//  Created by ouazzi mounir on 12/03/2021.
//

import SwiftUI

struct FiltresView: View {
    let type: [TypeModel]
    let critere: [CritereModel]
    
    // Toggle types
    @AppStorage("fermeActiver") var fermeActiver = true
    @AppStorage("magasinActiver") var magasinActiver = true
    @AppStorage("hotelActiver") var hotelActiver = true
    @AppStorage("restaurantActiver") var restaurantActiver = true
    //Toggle critères
    @AppStorage("vertActiver") var vertActiver = true
    @AppStorage("localActiver") var localActiver = true
    @AppStorage("solidaireActiver") var solidaireActiver = true
    
    @State private var navigationSelectionTag: Int? = 0
    var body: some View {
        NavigationView {
            VStack{
                Form{
                    Section(header: Text("Types")) {
                        Toggle(isOn: $fermeActiver, label: {
                            HStack{
                                Image(systemName: type[0].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(type[0].name)
                            }
                        })
                        Toggle(isOn: $magasinActiver, label: {
                            HStack{
                                Image(systemName: type[1].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(type[1].name)
                            }
                        })
                        Toggle(isOn: $hotelActiver, label: {
                            HStack{
                                Image(systemName: type[2].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(type[2].name)
                            }
                        })
                        Toggle(isOn: $restaurantActiver, label: {
                            HStack{
                                Image(systemName: type[3].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(type[3].name)
                            }
                        })
                    } //Fin première section "types"
                    Section(header: Text("Critères")) {
                        Toggle(isOn: $vertActiver, label: {
                            HStack{
                                Image(systemName: critere[0].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[0].name)
                            }
                        })
                        Toggle(isOn: $localActiver, label: {
                            HStack{
                                Image(systemName: critere[1].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[1].name)
                            }
                        })
                        Toggle(isOn: $solidaireActiver, label: {
                            HStack{
                                Image(systemName: critere[2].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[2].name)
                            }
                        })
                        Toggle(isOn: $solidaireActiver, label: {
                            HStack{
                                Image(systemName: critere[3].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[3].name)
                            }
                        })
                        Toggle(isOn: $solidaireActiver, label: {
                            HStack{
                                Image(systemName: critere[4].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[4].name)
                            }
                        })
                        Toggle(isOn: $solidaireActiver, label: {
                            HStack{
                                Image(systemName: critere[5].icon)
                                    .foregroundColor(.ButtonColor)
                                Text(critere[5].name)
                            }
                        })
                    }//Fin deuxième section "critères"
                }.font(.title3)
                .navigationBarTitle("Filtres", displayMode: .inline)
                .toggleStyle(SwitchToggleStyle(tint: Color.ButtonColor))
            }
        }
    }
}

struct FiltresView_Previews: PreviewProvider {
    static var previews: some View {
        FiltresView(type: TypeTab, critere: CritereTab)
    }
}
