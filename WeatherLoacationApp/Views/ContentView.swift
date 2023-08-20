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
            WelcomeView()
                .environmentObject(locationManager)
        }
        .background(Color("bg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
