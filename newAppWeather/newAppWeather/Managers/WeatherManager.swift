//
//  WeatherManager.swift
//  newAppWeather
//
//  Created by Fabio Menozzi on 03/03/23.
// 4e63674496fd4b61685e418e26de832a

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        
        guard let infoDictionary: [String: Any] = Bundle.main.infoDictionary else { return }
        guard let myWeatherApiKey: String = infoDictionary["MyWeatherApiKey"] as? String else { return }
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(myWeatherApiKey)&units=metric") else { fatalError("Missing URl")}
    }
}
