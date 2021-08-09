//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //-34.9100222,-56.1678687
        let coordinate = CLLocationCoordinate2D(
            latitude: -34.9100222,
            longitude: -56.1678687
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 2,
            longitudeDelta: 2
        )
        
        let  region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
