//
//  ModelFavo.swift
//  EcoTrip2
//
//  Created by Mailys Larager on 22/03/2021.
//

import Foundation
import SwiftUI

struct favoModel : Identifiable, Hashable{
    var id = UUID ()
    
    let icone: String
    let titre: String
    let sousTitre: String
    
}
let ferme = favoModel(icone: "tentedecale", titre: "La ferme de Monsieur Seguin", sousTitre: "Mornant (69)")
let sherwood = favoModel(icone: "activiteBis", titre: "Balade enchanteresse à Sherwood", sousTitre: "Grande-Rivière Château (39)")
let lavande = favoModel(icone: "activiteBis", titre: "La découverte de la lavande", sousTitre: "Fontaine-de-Vaucluse (84)")
let victoire = favoModel(icone: "activiteBis", titre: "Atteindre la Sainte-Victoire", sousTitre: "Aix-en-Provence (13)")

var tableauFav: [favoModel] = [
    ferme,
    sherwood,
    lavande,
    victoire
]
