//
//  dataLoader.swift
//  week-6-task
//
//  Created by  Decagon on 09/08/2021.
//

import Foundation

//MARK:- CLASS
class Loader {
    
    let apiKey = "cbb5426e3cac720686b38b2ced958a02"
    let city: String = "Ibadan"

    //MARK: - METHOD
    func pullAndDecodeJSONData(completionHandler: @escaping (WeatherMain) -> ()) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let json = try JSONDecoder().decode(WeatherMain.self, from: data)
                        completionHandler(json)
                    }
                    catch {
                        print("error:\(error.localizedDescription)")
                    }
                }
    
            }.resume()
        }
    }

//MARK:- METHOD
    func pullAndDecodeJSONForecast(completionHandler: @escaping (WeatherData) -> ()) {
        let forecastString = "http://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)&units=metric"
        if let url = URL(string: forecastString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let forcastJson = try JSONDecoder().decode(WeatherData.self, from: data)
                        completionHandler(forcastJson)
                        
                    }
                    catch {
                        print("error:\(error.localizedDescription)")
                    }
                }
                
            }.resume()
        }
    }
}
