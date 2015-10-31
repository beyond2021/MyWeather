//
//  WeatherModel.swift
//  MyWeather
//
//  Created by KEEVIN MITCHELL on 10/31/15.
//  Copyright © 2015 Beyond 2021. All rights reserved.
//

import Foundation
class WeatherModel : NSObject {
   
    let zip : String?
    let elevation  : String?
    let state_name : String?
    let observation_time : String?
    let weather : String?
    let temperature_string : String?
    let relative_humidity : String?
    let wind_string : String?
    let wind_dir : String?
    let dewpoint_string : String?
    let feelslike_string : String?
    let visibility_mi : String?
    let precip_1hr_in : String?
    let icon : String?
    let icon_url : String?
    let forecast_url : String?
    let history_url : String?
    
    struct WeatherConstants {
        static let zip = "zip"
        static let elevation = "elevation"
        static let state_name = "state_name"
        static let observation_time = "observation_time"
        static let weather = "weather"
        static let temperature_string = "temperature_string"
        static let relative_humidity = "relative_humidity"
        static let wind_string = "wind_string"
        static let wind_dir = "wind_dir"
        static let dewpoint_string = "dewpoint_string"
        static let feelslike_string = "feelslike_string"
        static let visibility_mi = "visibility_mi"
        static let precip_1hr_in = "precip_1hr_in"
        static let icon = "icon"
        static let icon_url = "icon_url"
        static let forecast_url = "forecast_url"
        static let history_url = "history_url"
        
    }
    
    // Initializer
    
    init(zip : String?,  elevation : String?,  state_name : String?, observation_time : String?, weather : String?, temperature_string : String?, relative_humidity : String?, wind_string : String?, wind_dir : String?, dewpoint_string : String?, feelslike_string : String?, visibility_mi : String?, precip_1hr_in : String?, icon : String?, icon_url : String?, forecast_url : String?, let history_url : String?) {
        self.zip = zip ?? ""
        self.elevation = elevation ?? ""
        self.state_name = state_name ?? ""
        self.observation_time = observation_time ?? ""
        self.weather = weather ?? ""
        self.temperature_string = temperature_string ?? ""
        self.relative_humidity = relative_humidity ?? ""
        self.wind_string = wind_string ?? ""
        self.wind_dir = wind_dir ?? ""
        self.dewpoint_string = dewpoint_string ?? ""
        self.feelslike_string = feelslike_string ?? ""
        self.visibility_mi = visibility_mi ?? ""
        self.precip_1hr_in = precip_1hr_in ?? ""
        self.icon = icon ?? ""
        self.icon_url = icon_url ?? ""
        self.forecast_url = forecast_url ?? ""
        self.history_url = history_url  ?? ""
    }

    
    
    
    
}
