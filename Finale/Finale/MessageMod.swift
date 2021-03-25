//
//  MessageMod.swift
//  LEBON
//
//  Created by boucher guillaume on 22/03/2021.
//

import Foundation

struct MessageMod : Identifiable {
    var id = UUID()
    let contenue: String
    let date: Date
    let isMine: Bool
    
    
}

let conversation: [MessageMod] = [
    MessageMod(contenue: "Bonjour monsieur je vous contacte au sujet de votre annonce publiée sur la superbe application ENS, les pommes sont toujours disponibles  ?", date: Date(), isMine: true),
    MessageMod(contenue: "Bonjour, oui. Comment voulez vous récupérer les pommes?", date: Date(), isMine: false),
    MessageMod(contenue: "J'ai vu sur l'application que vous etes à 25 KM de l'association. Etes vous disponible dans la fin de la semaine ?", date: Date(), isMine: true),
    MessageMod(contenue: "Oui je serais disponible ce vendredi en fin d'aprés midi ", date: Date(), isMine: false),
    MessageMod(contenue: "ok pas de problème je vous attendrais ", date: Date(), isMine: true),
//    MessageMod(contenue: "oui c'et encore dispo", date: Date(), isMine: false),
//    MessageMod(contenue: "quand je peut réc", date: Date(), isMine: true),
//    MessageMod(contenue: "à 10 H", date: Date(), isMine: false)
]
