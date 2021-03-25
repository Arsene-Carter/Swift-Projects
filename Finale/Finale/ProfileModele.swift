//
//  ProfileModele.swift
//  fon
//
//  Created by    CHIKA Ali on 09/03/2021.
//

import Foundation
struct ProfileModel :Identifiable{
    let id = UUID()
    let icon:String
    let nom:String
    let prenom:String
    let age: Int
    let nombreDeDon: Int
    let nombreDeDemande: Int
    let numTel: Int
    let email: String
  
    
    
    
    
}
let aliProfile=ProfileModel(icon: "profile1", nom: "Milou", prenom: "bidou", age: 150, nombreDeDon: 13, nombreDeDemande: 45, numTel: 0787654322, email: "ali@hotmail.fr")
let walidProfile=ProfileModel(icon: "profile2", nom: "walid", prenom: "widou", age: 234, nombreDeDon: 56, nombreDeDemande: 98, numTel: 0787654322, email: "ali@hotmail.fr")
let jeansergeProfile=ProfileModel(icon: "profile3", nom: "jean ", prenom: "serge", age: 24, nombreDeDon: 65, nombreDeDemande: 67, numTel: 0787654322, email: "ali@hotmail.fr")
let déborrahProfile=ProfileModel(icon: "profile4", nom: "Déborrah", prenom: "pascal", age: 23, nombreDeDon: 65, nombreDeDemande: 56, numTel: 0787654322, email: "ali@hotmail.fr")
let mohamedProfile=ProfileModel(icon: "profile5", nom: "Mohamed", prenom: "ali", age: 13, nombreDeDon: 56, nombreDeDemande: 67, numTel: 0787654322, email: "ali@hotmail.fr")
let guillomeProfile=ProfileModel(icon: "profile6", nom: "guillaume", prenom: "Pascal", age: 24, nombreDeDon: 12, nombreDeDemande: 99, numTel: 0787654322, email: "ali@hotmail.fr")
let déborrahProfile1=ProfileModel(icon: "profile7", nom: "Déborrah", prenom: "pascal", age: 23, nombreDeDon: 66, nombreDeDemande: 90, numTel: 0787654322, email: "ali@hotmail.fr")
let mohamedProfile1=ProfileModel(icon: "pprofile8", nom: "Mohamed", prenom: "ali", age: 13, nombreDeDon: 54, nombreDeDemande: 77, numTel: 0787654322, email: "ali@hotmail.fr")
let guillomeProfile1=ProfileModel(icon: "profile9", nom: "guillaume", prenom: "Pascal", age: 24, nombreDeDon: 80, nombreDeDemande: 11, numTel: 0787654322, email: "ali@hotmail.fr")
let déborrahProfile2=ProfileModel(icon: "profile10", nom: "Déborrah", prenom: "pascal", age: 23, nombreDeDon: 45, nombreDeDemande: 56, numTel: 0787654322, email: "ali@hotmail.fr")
let mohamedProfile2=ProfileModel(icon: "profile11", nom: "Mohamed", prenom: "ali", age: 13,nombreDeDon: 65, nombreDeDemande: 67, numTel: 0787654322, email: "ali@hotmail.fr")
let guillomeProfile2=ProfileModel(icon: "profile12", nom: "guillaume", prenom: "Pascal", age: 24, nombreDeDon: 12, nombreDeDemande: 78, numTel: 0787654322, email: "ali@hotmail.fr")
let déborrahProfile3=ProfileModel(icon: "profile13", nom: "Déborrah", prenom: "pascal", age: 23, nombreDeDon: 66, nombreDeDemande: 23, numTel: 0787654322, email: "ali@hotmail.fr")
let mohamedProfile3=ProfileModel(icon: "profile14", nom: "Mohamed", prenom: "ali", age: 13, nombreDeDon: 11, nombreDeDemande: 32, numTel: 0787654322, email: "ali@hotmail.fr")
let guillomeProfile3=ProfileModel(icon: "profile15", nom: "guillaume", prenom: "Pascal", age: 24, nombreDeDon: 43, nombreDeDemande: 67, numTel: 0787654322, email: "ali@hotmail.fr")

let tableauProfile:[ProfileModel]=[aliProfile,
                                   walidProfile,
                                   jeansergeProfile,
                                   déborrahProfile,
                                   guillomeProfile,
                                   mohamedProfile,
                                   déborrahProfile1,
                                   mohamedProfile1,
                                   guillomeProfile1,
                                   déborrahProfile2,
                                   mohamedProfile2,
                                   guillomeProfile2,
                                   déborrahProfile3,
                                   mohamedProfile3,
                                   guillomeProfile3
]
