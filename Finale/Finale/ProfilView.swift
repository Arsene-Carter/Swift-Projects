//
//  ProfilView.swift
//  fon
//
//  Created by    CHIKA Ali on 12/03/2021.
//

import SwiftUI


struct ProfilView: View {
    let x:ProfileModel
    var body: some View {
      
        VStack(spacing: 113.0) {
            
            //Image("ENS")
            Text("Profile de ")
                
            HStack(spacing: 11.0) {
                Image(x.icon)
                    .resizable()
                    
                    .frame(width: 150, height: 150 )
                    //.background(Color.yellow)
                    
                Spacer()
                VStack {
                    HStack {
                        Text(x.nom)
                        Spacer()
                        Text(x.prenom)
                        Spacer()
                    }
                    HStack {
                        
                        Image(systemName: "hands.clap")
                        Spacer()
                        Text("\(x.nombreDeDon)")
                        Spacer()
                    }
                        
                    HStack {
                        Image(systemName: "hand.thumbsup")
                        Spacer()
                        Text("\(x.nombreDeDemande)")
                        Spacer()
                    }
                }
                
            }
            Form {
                Section(header: Text("Informations de l'utilisateur")) {
                HStack {
                    Text("Mes dons")
                    Image(systemName: "hands.clap")
                    Spacer()
                    
                    Text("\(x.nombreDeDon)")
                }
                HStack {
                    Text("Mes demandes")
                    Image(systemName: "hand.thumbsup")
                    Spacer()
                    Text("\(x.nombreDeDemande)")
                    
                
                }
                HStack {
                    Text("Mes favories")
                    Image("fav")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                }
            }
            Form{
                Section(header: Text("Support")) {
                Text("Aide,FAQ")
                Text("Paramétres")
                Text("Déconnexion")
                }
                }
        }
        
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(x: tableauProfile[3])
            .ignoresSafeArea()
    }
}
