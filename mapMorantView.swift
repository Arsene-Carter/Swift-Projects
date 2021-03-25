//
//  mapMorantView.swift
//  ecotrip-project
//
//  Created by Mahfod Addi on 22/03/2021.
//

import SwiftUI
import MapKit

struct mapMorantView: View {
   
    @State private var locations: [Location] = Location.getLocation()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.764043, longitude: 4.835659), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent:  { (location) -> MapPin in
            MapPin(coordinate: location.coordinate, tint: .red)
        }).edgesIgnoringSafeArea(.all)
        
    }
}

struct mapMorantView_Previews: PreviewProvider {
    static var previews: some View {
        mapMorantView()
    }
}
