//
//  OneModele.swift
//  Solidarity
//
//  Created by  SABI Jean-Serge Abiola on 22/03/2021.
//

import Foundation
import SwiftUI

struct tabdiscussion : Identifiable {
    var id = UUID()
    var date: String
    let sender:ProfileModel
    let reciver: ProfileModel
    var contenu:String
}
let discussion1 = tabdiscussion(date: "30/03/2021", sender: aliProfile, reciver: guillomeProfile, contenu: "C'est un plaisir d'échanger avec vous!")
let discussion2 = tabdiscussion(date: "30/03/2021", sender: jeansergeProfile, reciver: guillomeProfile, contenu: "C'est un plaisir d'échanger avec vous")
let discussion3 = tabdiscussion(date: "30/03/2021", sender: mohamedProfile, reciver: guillomeProfile, contenu: "C'est un plaisir d'échanger avec vous")

let tableauDiscussion:[tabdiscussion]=[
    discussion1,
discussion2,
discussion3,



]
