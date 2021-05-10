//
//  MapView.swift
//  Africa
//
//  Created by Семён Рытенков on 07.05.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    
    var body: some View {
            
        Map(
            coordinateRegion: $region,
            annotationItems: locations,
            annotationContent: { item in
                MapAnnotation(
                    coordinate: item.location,
                    content: {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    } //: CONTENT
                )
            } //: ANNOTATION CONTENT
        )
        .edgesIgnoringSafeArea(.all)
        
    } //: BODY
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
