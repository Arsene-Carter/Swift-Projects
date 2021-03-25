//
//  App.swift
//  LEBON
//
//  Created by boucher guillaume on 12/03/2021.
//

import SwiftUI

struct AcceuilApp: View {
    
    @State private var accepted = false 
    
    var body: some View {
        
        if accepted {
            
            Home()
        }
        
        else {
            
            HStack {
                
                VStack {
                    
                    Spacer()
                    
                    Image("ENS")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .padding(.leading)
                    
                    
                    Spacer()
                    
                    
                    Image("MiniMap-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height:300)
                        .padding(10)
                    Text("Découvrez les annonces autour de vous !")
                        .font(.title2)
                    
                    Text("Pour afficher toutes les annonces de dons et de demandes autour de vous, nous avons de connaître votre emplacement.")
                        .padding(30)
                    
                    Button(action: {
                        
                        accepted = true
                    },
                    
                    label: {
                        
                        Text("Activer la Géolocalisation")
                            .font(.title3)
                            .foregroundColor(Color.orange)
                            .background(Color.white)
                    })
                }
            }
        }
    }
}

struct AcceuilAPP_Previews: PreviewProvider {
    static var previews: some View {
        AcceuilApp()
    }
}



