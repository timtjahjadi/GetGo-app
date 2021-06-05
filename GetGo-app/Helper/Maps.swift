//
//  Map.swift
//  GetGo-app
//
//  Created by Timotius Tjahjadi  on 05/06/21.
//

import SwiftUI
import MapKit

struct Maps: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}
