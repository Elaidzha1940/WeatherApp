//  /*
//
//  Project: WeatherLoacationApp
//  File: WeatherManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.08.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation
import CoreLocation
//727faf1bd3a72565b4c76a30128f3371

class WeatherManager {
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("727faf1bd3a72565b4c76a30128f3371")&units=metric") else { fatalError("Missing URL")}
        
        let urlRequest = URLRequest 
    }
}
