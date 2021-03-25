//
//  MesModele.swift
//  Solidarity
//
//  Created by  SABI Jean-Serge Abiola on 22/03/2021.
//

import Foundation
struct mesType: Identifiable{
    var id: Int
    var msg : String
    var time: String
    var msgs: String
    var name: String
    var pic: String
    
}
var messages :[mesType] = [

    mesType(id: 0, msg: "bonjour, la commande est-t-elle disponible?", time: "14:33", msgs: "6", name: "Zubergker", pic: "profile1")
    ,mesType(id: 1, msg: "Bonjour, vous avez vraiment une très bonne initiative!", time: "12:12", msgs: "4", name: "Thrive&Up", pic: "profile2" )
    ,mesType(id: 2, msg: "Je vous attends pour réceptionner la commande?", time: "17:59", msgs: "6", name: "Aliswift", pic: "profile6")
    ,mesType(id: 3, msg: "Êtes-vous disponible?", time: "15:35", msgs: "4", name: "Jean-Serge", pic: "profile3")
    ,mesType(id: 4, msg: "Vous voulez voir la marchandise?", time: "18:45", msgs: "8", name: "Association AgoAliment", pic: "profile4"),
    mesType(id: 0, msg: "bonjour, la commande est-t-elle disponible?", time: "14:33", msgs: "9", name: "Zubergker", pic: "profile5")
    ,mesType(id: 1, msg: "Bonjour, vous avez vraiment une très bonne initiative!", time: "12:12", msgs: "3", name: "GuiMap", pic: "profile6")
    ,mesType(id: 2, msg: "Je vous attends pour réceptionner la commande?", time: "17:59", msgs: "10", name: "Aliswift", pic: "profile7")
    ,mesType(id: 3, msg: "Êtes-vous disponible?", time: "15:35", msgs: "5", name: "Jean-Serge", pic: "profile8")
    ,mesType(id: 4, msg: "Vous voulez voir la marchandise?", time: "18:45", msgs: "1", name: "Mohamed", pic: "profile9")

]




