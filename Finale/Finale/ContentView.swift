//
//  ContentView.swift
//  Finale
//
//  Created by    CHIKA Ali on 24/03/2021.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            ListeDesAnnoncesDisponible(annonces: tableauAnnonce)
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Annonces")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                        .accentColor(.orange)
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Recherche")
                        .accentColor(.orange)
                }
            FormAdView()
                .tabItem{
                    Image(systemName: "plus.circle.fill")
                        .padding(/*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                    Text("Créer")
                    Spacer()
                }
            MesView(messages: messages)
                .tabItem {
                    Image(systemName: "bubble.left")
                    Text("Message")
                }
            ProfilView(x: tableauProfile[0])
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profil")
        }
    }.accentColor(.orange)
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}
