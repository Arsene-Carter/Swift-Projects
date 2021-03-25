//
//  Carte.swift
//  LEBON
//
//  Created by boucher guillaume on 12/03/2021.
//

import SwiftUI
import MapKit
import CoreLocation





struct ContentsView_Previews: PreviewProvider {
    
    static var previews: some View {
        Home()
    }
}


struct Home:View {
    
    private let locationManager = CLLocationManager()
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.764043, longitude: 4.835659), latitudinalMeters: 10000, longitudinalMeters: 10000)
    
    @State var tracking : MapUserTrackingMode = .follow
    
    @State var accepted = false
    
    var body: some View  {
        
        if accepted {
           
            ContentView()
        }
        
        else {
            
            ZStack {
                
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode:  $userTrackingMode).ignoresSafeArea()
                
                
                VStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                        accepted = true
                    },
                    
                    label: {
                        Text("Continuer")
                            .font(.title3)
                            .foregroundColor(Color.orange)
                            .background(Color.white)
                    })
                }
    
                .onAppear() {
                    
                    self.locationManager.requestWhenInUseAuthorization()
                }
            }
        }
    }
}
