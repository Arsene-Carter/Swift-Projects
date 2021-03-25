//
//  ConversationModel.swift
//  Solidarity
//
//  Created by    CHIKA Ali on 15/03/2021.
//

import Foundation
import SwiftUI

struct ConversationModel :Identifiable{
    let id = UUID()
    let sujet:String
    let contenue:String
    let sender:ProfileModel
    let reciver: ProfileModel
    let date: String
}


let message1 = ConversationModel(sujet: "disponibilité don ", contenue: "Est ce que le don que vous avez posté est toujours disponible?", sender: aliProfile, reciver: déborrahProfile, date: "15/08/2021")
let message2 = ConversationModel(sujet: "demande", contenue: "je vous contacte concernant le don du 14/03/2021", sender: guillomeProfile, reciver: jeansergeProfile, date: "23/09/2021")
let message3 = ConversationModel(sujet: "retard de livraison", contenue: "je suis désolé pou le retard dû à des circonstances inattendues", sender: mohamedProfile, reciver: walidProfile, date: "4/05/2021")
let message4 = ConversationModel(sujet: " don  de viande", contenue: "Est ce que le don du viandes  posté est encore dsponible?", sender: jeansergeProfile, reciver: mohamedProfile, date: "15/08/2021")
let tableauConversation:[ConversationModel] = [ message1,
                                                message2,
                                                message3,
                                                message4
]
