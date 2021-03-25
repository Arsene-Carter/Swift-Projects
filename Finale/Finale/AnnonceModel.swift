//
//  AnnonceModel.swift
//  Finale
//
//  Created by    CHIKA Ali on 24/03/2021.
//

import Foundation
//
//  AnnonceModel.swift
//  fon
//
//  Created by    CHIKA Ali on 09/03/2021.
//

import Foundation
struct AnnonceModel: Identifiable {
    var id = UUID()
    let type:Bool
    let dateDennonce:String
    //let dateReelle: Date
    let personneQuiFaitAnnonce:ProfileModel
    let photo:String
    let localisation:String
    let nombreLike:Int
    let nombrePartage:Int
    let disponiblilite:Bool
    let categorie:String
    let description:String
    let sujet: String
    let distance: Int
    let duree: Int
    

}



let annonce1 = AnnonceModel(type: true, dateDennonce: "02/03/2021",  personneQuiFaitAnnonce: déborrahProfile, photo: "don10", localisation: "Meursac", nombreLike: 3, nombrePartage: 45, disponiblilite: false, categorie: "végétal", description: "Merci de venir récupérer 5kg de tomates.", sujet: "Tomates", distance: 23, duree: 34)
let annonce2: AnnonceModel=AnnonceModel(type: true, dateDennonce: "12/08/1976", personneQuiFaitAnnonce: aliProfile, photo: "don6", localisation: "Arcachon", nombreLike: 14, nombrePartage: 45, disponiblilite: true, categorie: "animal", description: "Don de 5kg de poissons à récuperer très rapidement.", sujet: "Poissons",distance: 65, duree: 28)
let annonce3 = AnnonceModel( type: false, dateDennonce:"10/03/2021", personneQuiFaitAnnonce: jeansergeProfile,photo:"don1" ,localisation: "Madiran", nombreLike: 23, nombrePartage: 12, disponiblilite: true , categorie: "végétal", description: "Je donne un lot de légumes.", sujet: "Légumes",distance: 10, duree: 10)
let annonce4 = AnnonceModel( type: true, dateDennonce: "13/03/2021", personneQuiFaitAnnonce: aliProfile, photo: "don3", localisation: "Marseille", nombreLike: 23, nombrePartage: 12, disponiblilite: false, categorie: "végétal", description: "Cagettes de divers fruits.", sujet: "Fruits",distance: 29, duree: 27)
let annonce5: AnnonceModel=AnnonceModel(type: false, dateDennonce: "12/08/1976", personneQuiFaitAnnonce: aliProfile, photo: "don6", localisation: "Arcachon", nombreLike: 14, nombrePartage: 45, disponiblilite: true, categorie: "animal", description: "Don de 5kg de poissons à récuperer très rapidement.", sujet: "Poissons",distance: 65, duree: 28)
let annonce6 = AnnonceModel( type: true, dateDennonce:"10/03/2021", personneQuiFaitAnnonce: jeansergeProfile,photo:"don1" ,localisation: "Madiran", nombreLike: 23, nombrePartage: 12, disponiblilite: true , categorie: "végétal", description: "Je donne un lot de légumes.", sujet: "Légumes",distance: 10, duree: 10)
let annnonce7 = AnnonceModel( type: false, dateDennonce: "13/03/2021", personneQuiFaitAnnonce: aliProfile, photo: "don3", localisation: "Marseille", nombreLike: 23, nombrePartage: 12, disponiblilite: false, categorie: "végétal", description: "Cagettes de divers fruits.", sujet: "Fruits",distance: 29, duree: 27)
let annonce8 = AnnonceModel( type: true, dateDennonce:"01/03/2021", personneQuiFaitAnnonce: aliProfile,photo:"don2" ,localisation: "Lyon", nombreLike: 50, nombrePartage: 20, disponiblilite: false , categorie: "végétal", description: "3kg de pommes à venir chercher.", sujet: "Pommes", distance: 23, duree: 25)

let annone9 = AnnonceModel( type: true, dateDennonce: "02/03/2021", personneQuiFaitAnnonce: walidProfile, photo: "don9", localisation: "Sauvignac", nombreLike: 23, nombrePartage: 12, disponiblilite: false, categorie: "végétal", description: "Je donne 2 kg de carottes.", sujet: "Carottes",distance: 39, duree: 40)
//creation de tableau
let tableauAnnonce:[AnnonceModel]=[
                                    annonce1,
                                    annonce8,
                                    annonce3,
                                    annonce2,
                                    annnonce7,
                                    annonce4,
                                    annonce5,
                                    annonce6,
                                    annonce1
                                   
]



