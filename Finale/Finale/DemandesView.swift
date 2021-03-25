//
//  DemandesView.swift
//  fon
//
//  Created by    CHIKA Ali on 10/03/2021.
//

import SwiftUI

struct DemandesView: View {
    @State var filtreDemandes = true
    @State var filtreDons = true
    let x:[AnnonceModel]
    var body: some View {
        //Débt de déclaration de la liste
            VStack {
                NavigationView  {
                    List{
                        Toggle (isOn: $filtreDemandes){
                            Text("Les demandes")
                        }
                        Toggle(isOn: $filtreDons){
                            Text("Les dons")
                        }
                        ForEach(x){ variable in
                            if variable.type && self.filtreDemandes {
                                NavigationLink(
                                    destination: AnnonceDetailsView(annonce: variable),
                                    label: {
                                        AnnonceLigneView(variable: variable)
                                    })
                                    .background(Color.clear)
                                    .cornerRadius(25)
                            }
                        }//fin de déclaration de la liste
                        ForEach(x){ variable in
                            if !variable.type && self.filtreDons {
                                NavigationLink(
                                    destination: AnnonceDetailsView(annonce: variable),
                                    label: {
                                        AnnonceLigneView(variable: variable)
                                    })
                                    .background(Color.clear)
                                    .cornerRadius(25)
                            }
                        }
                    }
                    .navigationBarTitle("Listes des annonces")
                }
            }
        }//fin ZStack
    }
struct DemandesView_Previews: PreviewProvider {
    static var previews: some View {
        DemandesView(x:tableauAnnonce)
    }
}

struct PhotoDeAnnonce: View {
    let photo:String
    var body: some View {
        Image(photo)
            .resizable()
            .cornerRadius(150)
            .aspectRatio(contentMode: .fit)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct DescriptionAnnnonce: View {
    let description: String
    var body: some View {
        Text(description)
            .font(.title)
    }
}

struct TypeAnnonce: View {
    let type: Bool
    var body: some View {
        HStack {
            Text("type de l'annonce")
            if type
            {
                Text("Demande")
                    .background(Color.yellow)
                    .cornerRadius(15)
                
            }
            else{
                Text("    Don   ")
                    .background(Color.yellow)
                    .cornerRadius(15)
                
            }
        }
    }
}

struct AnnonceLigneView: View {
    let variable: AnnonceModel
    var body: some View {
        HStack{
            PhotoDeAnnonce(photo: variable.photo)
            VStack{
                TypeAnnonce(type: variable.type)
                DescriptionAnnnonce(description: variable.description)
                HStack{
                    Image("distance")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 39.0, height: 39.0)
                        .background(Color.yellow)
                        .cornerRadius(20)
                    Text("3,3 Km")
                        .foregroundColor(Color.white)
                    Image("duree")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width: 39.0, height: 39.0)
                        .background(Color.yellow)
                        .cornerRadius(20)
                    Text("40 min")
                        .foregroundColor(Color.white)
                }
            }
            VStack{
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(minWidth: 0, maxWidth: 60, minHeight: 0, maxHeight: 50)
                    .foregroundColor(.yellow)
                Text("\(variable.nombrePartage)")
                    .foregroundColor(Color.white)
                Image("partageer")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(minWidth: 0, maxWidth: 60, minHeight: 0, maxHeight: 50)
                Text("\(variable.nombreLike)")
                    .foregroundColor(Color.white)
            }
            
        }
    }
}
