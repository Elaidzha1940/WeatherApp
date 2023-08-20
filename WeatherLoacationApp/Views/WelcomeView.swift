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

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        
        VStack {
            VStack(spacing: 20) {
                 
                Text("Welcome to the WeatherApp")
                    .font(.system(size: 30, weight: .bold, design: .serif))
                
                Text("Plese share your location to get the weather in your area.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
