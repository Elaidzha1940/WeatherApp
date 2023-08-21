//  /*
//
//  Project: WeatherLoacationApp
//  File: WeatherRow.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct WeatherRow: View {
    
    var logo: String
    var name: String
    var value: String

    var body: some View {
        
        HStack {
            
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color("bg"))
                .cornerRadius(50)

            VStack(alignment: .leading, spacing: 10) {
                Text(name)
                    .font(.system(size: 15, weight: .regular, design: .serif))

                Text(value)
                    .font(.system(size: 20, weight: .bold, design: .serif))
            }
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "thermometer", name: "Feels like", value: "8°")
    }
}
