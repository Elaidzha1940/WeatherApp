//  /*
//
//  Project: WeatherLoacationApp
//  File: LocationManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.08.2023
//
//  Status: in progress | Decorated
//
//  */


import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
}