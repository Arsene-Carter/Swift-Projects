//
//  AnnonceDetailsView.swift
//  fon
//
//  Created by    CHIKA Ali on 12/03/2021.
//

import SwiftUI

struct AnnonceDetailsView: View {
    let annonce:AnnonceModel
    var body: some View {
       
        VStack{
            HStack {
                Text("Plus de détails" )
                    .fontWeight(.bold)
                    .font(.title)
            }
            Spacer()
            Spacer()
            
            //
            HStack{
                Image(annonce.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            Form{
                HStack {
                    Text("Publiée le ")
                        .fontWeight(.semibold)
                    Spacer()
                    Text(annonce.dateDennonce)
                }
                HStack {
                    TypeDeAnnonce(annonce: annonce.type)
                    Spacer()
                    DisponibiliteAnnonce(isDemande: annonce.type, isDispo: annonce.disponiblilite)
                    
                }
                HStack {
                    Text("Description de l'annonce : ")
                        .fontWeight(.semibold)
                    Spacer()
                        //.padding()
                    Text(annonce.description)
                }
                HStack {
                    Text("Catégorie de produits ")
                        .fontWeight(.semibold)
                    Spacer()
                    Text(annonce.categorie)
                }
                HStack {
                    NavigationLink(
                        destination: ProfilePersonneView(x: annonce.personneQuiFaitAnnonce),
                        label: {
                            
                            Text("Publiée par : ")
                                .fontWeight(.semibold)
                            Spacer()
                            Text(annonce.personneQuiFaitAnnonce.nom)
                        })
                }.padding()
              
            }
            
        }
       
    }
    
}

struct AnnonceDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceDetailsView(annonce: tableauAnnonce[2])
           
    }
}
struct DisponibiliteAnnonce: View {
    let isDemande:Bool
    let isDispo: Bool
    var body: some View {
        HStack{
            if (!isDemande) && (isDispo) {
                
                Text("Disponibilité")
                    .font(Font.system(size: 16))
                
                //.font(.caption)
                Text("Oui")
                    .underline()
            }
            if (!isDemande) && (!isDispo) {
                
                Text("Disponibilité")
                    .fontWeight(.semibold)
                Text("Non")
            }
        }
    }
}
