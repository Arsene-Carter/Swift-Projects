//
//  FiltresModel.swift
//  Filtres
//
//  Created by ouazzi mounir on 12/03/2021.
//

import Foundation
import SwiftUI
import MapKit

//Pour la view filtres
struct TypeModel: Identifiable {
    var id = UUID()
    let name: String
    let icon: String
}

let ferme = TypeModel(name: "Fermes", icon: "leaf")
let magasin = TypeModel(name: "Magasins", icon: "bag")
let hotel = TypeModel(name: "Hôtels", icon: "house")
let restaurant = TypeModel(name: "Restaurants", icon: "book")

let TypeTab: [TypeModel] = [
    ferme,
    magasin,
    hotel,
    restaurant
]

//Pour la view filtes
struct CritereModel: Identifiable {
    var id = UUID()
    let name: String
    let icon: String
}

let culture = CritereModel(name: "Culture", icon: "book")
let local = CritereModel(name: "Local", icon: "house")
let zen = CritereModel(name: "Zen", icon: "leaf")
let montagne = CritereModel(name: "Montagne", icon: "wind")
let nautique = CritereModel(name: "Nautique", icon: "drop")
let animaux = CritereModel(name: "Animaux", icon: "hare")

let CritereTab: [CritereModel] = [
    culture,
    local,
    zen,
    montagne,
    nautique,
    animaux
]

//Couleurs custom
extension Color {
    static let oldPrimaryColor = Color(UIColor.systemIndigo)
    static let ButtonColor = Color(red: 40 / 255, green: 193 / 255, blue: 138 / 255)
    static let MarkerColor = Color(red: 56 / 255, green: 158 / 255, blue: 159 / 255)
    //Bouton X couleurs
    static let SkipColor1 = Color(red: 230 / 255, green: 75 / 255, blue: 60 / 255)
    static let SkipColor2 = Color(red: 196 / 255, green: 59 / 255, blue: 45 / 255)
    //Bouton Fav couleurs
    static let FavColor1 = Color(red: 54 / 255, green: 232 / 255, blue: 126 / 255)
    static let FavColor2 = Color(red: 38 / 255, green: 198 / 255, blue: 134 / 255)
    //Bouton Infos couleurs
    static let InfoColor1 = Color(red: 241 / 255, green: 194 / 255, blue: 15 / 255)
    static let InfoColor2 = Color(red: 231 / 255, green: 131 / 255, blue: 33 / 255)

}

struct Lieux: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
    
    var x: CGFloat = 0.0
    
    var y: CGFloat = 0.0
    
    var degree: Double = 0.0
    
    static var data: [Lieux] {
        [
            Lieux(name: "Lieu n°1", description: "Description du lieu 1", image: "image1"),
            Lieux(name: "Lieu n°2", description: "Description du lieu 2", image: "image2"),
            Lieux(name: "Lieu n°3", description: "Description du lieu 3", image: "image3"),
            Lieux(name: "Lieu n°4", description: "Description du lieu 4", image: "image4"),
            Lieux(name: "Lieu n°5", description: "Description du lieu 5", image: "image5")
        ]
    }
}
struct Scroll :Identifiable ,Hashable{
    var id = UUID()
    
    let image : String
    
}

let scrollImage = Scroll(image: "image-canva1")
let scrollImage1 = Scroll(image: "image-canva2")
let scrollImage2 = Scroll(image: "image-canva3")
let scrollImage3 = Scroll(image: "image-canva4")
let scrollImageLabel = Scroll(image:"label1")
let scrollImageLabel1 = Scroll(image:"label2")
let scrollImageLabel2 = Scroll(image:"label3")
let scrollImageLabel3 = Scroll(image:"label4")


let suggestionTravel =
    [
        scrollImage,
        scrollImage1,
        scrollImage2,
        scrollImage3
        
    ]


let suggestionTravelLabel =
    [
        
        scrollImageLabel,
        scrollImageLabel1,
        scrollImageLabel2,
        scrollImageLabel3
    ]
struct Local {
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
    let pin: String
}

extension Local: Identifiable { }

extension Local {
    static func getLocal() -> [Local] {
        return [
            Local(title: "Restaurant n°1", coordinate: CLLocationCoordinate2D(latitude: 45.751940, longitude: 4.845620), pin: "RestauPin"),
            Local(title: "Restaurant n°2", coordinate: CLLocationCoordinate2D(latitude: 45.754679, longitude: 4.82071), pin: "RestauPin"),
            Local(title: "Restaurant n°3", coordinate: CLLocationCoordinate2D(latitude: 45.691462, longitude: 4.882851), pin: "RestauPin"),
            Local(title: "Hebergement n°1", coordinate: CLLocationCoordinate2D(latitude: 45.768940, longitude: 4.856250), pin: "HebergPin"),
            Local(title: "Activité n°1", coordinate: CLLocationCoordinate2D(latitude: 45.753760, longitude: 4.889310), pin: "ActivPin"),
            Local(title: "Activité n°2", coordinate: CLLocationCoordinate2D(latitude: 45.732396, longitude: 4.863625), pin: "ActivPin")
        ]
    }
}
