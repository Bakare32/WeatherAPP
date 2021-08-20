//
//  weatherForecast.swift
//  week-6-task
//
//  Created by  Decagon on 13/08/2021.
//

import UIKit

//MARK: - STRUCT FOR THE FORECAST
struct WeatherData: Decodable {
    let list: [List]

}
//MARK: - STRUCT
struct Main: Decodable {
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
struct Weather2: Decodable {
    let main: String
    let icon: String
}
//MARK: - STRUCT
struct List: Decodable {
    let main: Main
    let weather: [Weather2]
    let dt: Int
}
