//  /*
//
//  Project: WeatherLoacationApp
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.08.2023
//
//  
//
//  */

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    
                }
            }
            
            WelcomeView()
                .environmentObject(locationManager)
        }
        .background(Color("bg"))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
