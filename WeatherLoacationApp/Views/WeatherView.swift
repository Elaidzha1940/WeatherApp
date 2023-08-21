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
                        .font(.system(size: 30, weight: .bold, design: .serif))
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            
                            Image(systemName: "cloud.sun.fill")
                                .font(.system(size: 30, weight: .bold, design: .serif))
                            
                            Text(weather.weather[0].main)
                            
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text(weather.main.feelsLike.rounDouble() + "°")
                            .font(.system(size: 70, weight: .bold, design: .serif))
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://www.myglobalviewpoint.com/wp-content/uploads/2019/05/Cheapest-cities-in-Europe-you-should-visit-featured-image.jpg")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                    
                    
                }
                .frame(maxWidth: .infinity)
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
