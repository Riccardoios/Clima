//
//  WeatherModel.swift
//  Clima
//
//  Created by Riccardo Carlotto on 17/11/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString : String {
        return String(format:"%.1f", temperature)
    }
    
    var conditionName : String {
        switch conditionId {
        case 200...232:
            return "cloud.bold.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...504:
            return "cloud.sun.rain"
        case 511...531:
            return "cloud.heavyrain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.sun"
        default:
            return "cloud"
        }
    }
    
    
}
