//
//  ProfilePersonne.swift
//  Projet d'essaye
//
//  Created by    CHIKA Ali on 23/03/2021.
//

import SwiftUI


struct ProfilePersonneView: View {
    let x:ProfileModel
    var body: some View {
       
        VStack {
            Text("Informations sur la personne")
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .frame(width: 432.0, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
               // .background(Color.orange)
                .cornerRadius(/*@START_MENU_TOKEN@*/29.0/*@END_MENU_TOKEN@*/)
            
            
            Image(x.icon)
                .resizable()
                .padding(/*@START_MENU_TOKEN@*/.all, 30.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/155/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/155/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //.aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/11/*@END_MENU_TOKEN@*/)
            
            Text(x.nom)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            HStack {
                VStack {
                    Text("Nombre demandes")
                        .font(.title2)
                        .fontWeight(.semibold)
                    //.padding(1.0)
                    
                    Text(x.nombreDeDemande.description)
                        .frame(width: /*@START_MENU_TOKEN@*/83.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/82.0/*@END_MENU_TOKEN@*/)
                        //.clipShape(Circle())
                        .cornerRadius(90)
                        //.background(Color.orange)
                        .foregroundColor(.black).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                VStack{
                    Text("Nombre dons")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(x.nombreDeDon.description)
                        .frame(width: /*@START_MENU_TOKEN@*/83.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/82.0/*@END_MENU_TOKEN@*/)
                        .cornerRadius(90)
//                        .background(Color.orange)
//                        .background(Color.orange)
                        .foregroundColor(.black).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
            }
            Spacer()
            HStack {
                Text("Numéro de telephone : ")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(x.numTel.description)
            }
            HStack {
                Text("Adresse email : ")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text(x.email.description)
            }
          
        }
    }
}

struct ProfilePersonneView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePersonneView(x: tableauProfile[3])
            .ignoresSafeArea()
    }
}
