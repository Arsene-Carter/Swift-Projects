//
//  ModelDescription.swift
//  EcoTrip2
//
//  Created by Mailys Larager on 15/03/2021.
//

import Foundation
import SwiftUI

struct ModelDescription: Identifiable, Hashable{
    var id = UUID()
    
    let photo: String
    let favori: String
    let titre: String
    let ville: String
    let pinIcone: String
    let textIcone: String
    let resume: String
    let activite: String
    let actIcone: [String]
    let textActivite : [String]
    let local: String
    let localIcone: [String]
    let textLocal : [String]

//    let isFavorite : Bool
}

let mornantSeguin = ModelDescription(photo: "fermeSeguin", favori: "etoile", titre: "La ferme de Monsieur Seguin", ville: "Mornant (69)", pinIcone: "pinVertBouton", textIcone: "doc.text", resume: "Un havre de paix au milieu de la campagne et de ses belles vaches qui vous évaderont pour des vacances fort méritées.", activite: "Activités", actIcone: ["lecture","canoe","zen"], textActivite : ["culture", "nautique", "zen"], local: "Local", localIcone: ["burger","verreBis"], textLocal : ["miam", "gloulgou"])

let lavandeVaucluse = ModelDescription(photo: "lavandePhoto", favori: "etoile", titre: "La découverte de la lavande", ville: "Fontaine de Vaucluse (84)", pinIcone: "pinVertBouton", textIcone: "doc.text", resume: "Découvrez l'histoire de la lavande provençale à travers les champs odorants et le récit de son cultivateur Martial.", activite: "Activités", actIcone: ["lecture","zen"], textActivite : ["culture", "zen"], local: "Local", localIcone: ["burger","cintre"], textLocal : ["miam", "textile"])

let foretSherwood = ModelDescription(photo: "foretPhoto", favori: "etoile", titre: "Balade enchanteresse à Sherwood", ville: "Grande-Rivière Château (39)", pinIcone: "pinVertBouton", textIcone: "doc.text", resume: "Evadez-vous dans la forêt de Sherwood, profitez du cadre enchanteresse pour déconnectez.", activite: "Activités", actIcone: ["velo","canoe"], textActivite : ["vélo", "nautique"], local: "Local", localIcone: ["burger"], textLocal : ["miam"])

let sainteVictoire = ModelDescription(photo: "randonneePhoto", favori: "etoile", titre: "Atteindre la Sainte-Victoire", ville: "Aix-en-Provence (13)", pinIcone: "pinVertBouton", textIcone: "doc.text", resume: "Symbole de la Provence, la montagne Sainte-Victoire culmine à 1 011 m, préparez de bonnes chaussures pour profiter au mieux !", activite: "Activités", actIcone: ["pattes"], textActivite : ["avec animaux"], local: "Local", localIcone: ["randonneeImage"], textLocal : ["randonnée"])

let camping = ModelDescription(photo: "escaladePhoto", favori: "etoile", titre: "Camping de la Mère Michelle", ville: "Roussillon (13)", pinIcone: "pinVertBouton", textIcone: "doc.text", resume: "Le Camping de la Mère Michelle est un lieu incontournable pour les sportifs car à proximité il y a des équipements adaptés pour tous les goûts.", activite: "Activités", actIcone: ["pattes","velo"], textActivite : ["avec animaux", "vélo"], local: "Local", localIcone: ["randonneeImage"], textLocal : ["randonnée sportive"])

let tableau : [ModelDescription] = [
    mornantSeguin,
    lavandeVaucluse,
    foretSherwood,
    sainteVictoire,
    camping
]
enum Page {
    case page1
    case page2
    case page3
    case page4
    case page5
    case page6
}
