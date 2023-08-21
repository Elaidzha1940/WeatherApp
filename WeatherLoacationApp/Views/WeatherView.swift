//  /*
//
//  Project: WeatherLoacationApp
//  File: WeatherView.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct WeatherView: View {
    
    var weather: ResponseBody
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color("bg"))
        .preferredColorScheme(.dark)

    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
