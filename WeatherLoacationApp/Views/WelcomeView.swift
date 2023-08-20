//  /*
//
//  Project: WeatherLoacationApp
//  File: WelcomeView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        
        VStack {
            VStack(spacing: 20) {
                 
                Text("Welcome to the WeatherApp!")
                    .font(.system(size: 30, weight: .bold, design: .serif))
                
                Text("Plese share your location to get the weather in your area.")
                    .font(.system(size: 15, weight: .regular, design: .serif))

                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(20)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
