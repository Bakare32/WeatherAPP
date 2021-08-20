//
//  weather.swift
//  week-6-task
//
//  Created by  Decagon on 09/08/2021.
//

import UIKit

//MARK: - STRUCT
struct Weather: Codable {
    let temp: Float
    let maxTemp: Float
    let minTemp: Float
    enum CodingKeys: String, CodingKey {
        case temp
        case maxTemp = "temp_max"
        case minTemp = "temp_min"
    }

}
//MARK: - STRUCT
struct Description: Codable {
    let main: String
    let description: String
}

//MARK: - STRUCT FOR THE CURRENT
struct WeatherMain: Codable {
    let main: Weather
    let weather: [Description]
}




