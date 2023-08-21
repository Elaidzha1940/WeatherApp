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
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error fetching weather data.")}
        
    }
}

struct ResponseBody: Decodable {
    
    var coord: CoordinatesRespone
    var weather: [WeatherRespone]
    var main: MainRespone
    var name: String
    var wind: WindRespone
    
    struct CoordinatesRespone: Decodable {
        
        var lon: Double
        var lan: Double
    }
    
    struct WeatherRespone: Decodable {
        
        var id: Double
        var main: String
        var description: String
        var icon: String
    }
    
    struct MainRespone: Decodable {
        
        var temp: Double
        var feels_like: Double
        var temp_main: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindRespone: Decodable {
        
        var speed: Double
        var deg: Double
    }
}

extension
