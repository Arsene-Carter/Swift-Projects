//
//  ListeDesAnnoncesDisponible.swift
//  Projet d'essaye
//
//  Created by    CHIKA Ali on 17/03/2021.
//

import SwiftUI

struct ListeDesAnnoncesDisponible: View {
    let annonces: [AnnonceModel]
    @State private var isDemande = true
    @State private var mot = "dons"
    
    //    var annonesFiltrees: [AnnonceModel]  {
    //        annonces.filter { annonce in
    //            return annonce.type == isDemande
    //        }
    //
    //    }
    //
    var body: some View {
        VStack{
            NavigationView {
                VStack {
                    Picker("D", selection: $isDemande, content: {
                        Text("Dons").tag(false)
                        Text("Demandes").tag(true)
                    }).pickerStyle(SegmentedPickerStyle())
                    
                    
                    HStack {
                        Text("Actuellement il y a ")
                            .fontWeight(.bold)
                        + Text( annonces.filter { annonce in
                            return annonce.type == isDemande
                        }.count.description).fontWeight(.bold).foregroundColor(Color.red)
                        
                        
                        + Text(isDemande ? " demandes" : " dons").fontWeight(.bold)
                    }
                    List (annonces.filter { annonce in
                        return annonce.type == isDemande
                    })
                    {
                        annonce in
                        NavigationLink(
                            destination: AnnonceDetailsView(annonce: annonce),
                            label: {
                                VStack {
                                    HStack{
                                        Image(annonce.photo)
                                            .resizable()
                                            .clipShape(Circle())
                                            .frame(width: 130.0, height: 130)
                                            .padding()
                                        VStack(alignment: .leading) {
                                            Spacer()
                                            Spacer()
                                            Text(annonce.sujet)
                                                .fontWeight(.bold)
                                            Spacer()
                                            Text(annonce.dateDennonce)
                                            Spacer()
                                            HStack {
                                                Text("Ville :  ")
                                                    .fontWeight(.semibold)
                                                Text(annonce.localisation)
                                            }
                                            
                                            HStack{
                                                HStack {
                                                    Image(systemName:"mappin.and.ellipse")
                                                        .resizable()
                                                        .cornerRadius(20)
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 20, height: 20)
                                                    Text("\(annonce.distance)  Km")
                                                    
                                                };Spacer()
                                                HStack {
                                                    Image(systemName:"clock.arrow.circlepath")
                                                        .resizable()
                                                        .cornerRadius(20)
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 20, height: 20)
                                                    Text("\(annonce.duree) min")
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                    }
                                    
                                }
                            })
                        
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Listes des annonces")
                .accentColor(.orange)
            }
    }
    
}
}



//func sommeDon(tab:[AnnonceModel])->Int{
//    var res: Int = 0
//    for i in tab {
//        if i.type {
//            res += 1
//
//        }
//    }
//    return(res)
//}
//
//func sommeDemande(tab:[AnnonceModel])->Int{
//    var res: Int = 0
//    for i in tab {
//        if !i.type {
//            res += 1
//
//        }
//    }
//    return(res)
//}

struct ListeDesAnnoncesDisponible_Previews: PreviewProvider {
    static var previews: some View {
        ListeDesAnnoncesDisponible(annonces: tableauAnnonce)
          
    }
}
struct TypeDeAnnonce: View {
    let annonce:Bool
    var body: some View {
        HStack {
            Text("Type: ")
                
                .fontWeight(.semibold)
            if annonce{
                Text("demande")
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding(-5)
            }
            else{
                Text("Don")
                    .font(.caption)
                    .foregroundColor(.green)
                    .padding(-5)
            }
        }
    }
}
