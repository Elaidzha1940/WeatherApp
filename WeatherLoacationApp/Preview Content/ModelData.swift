//  /*
//
//  Project: WeatherLoacationApp
//  File: ModelData.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.08.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = 
    }
}

