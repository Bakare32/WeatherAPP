//
//  Extend+View.swift
//  week-6-task
//
//  Created by  Decagon on 13/08/2021.
//

import UIKit

extension HomeViewController {
    //MARK: - METHOD FOR FORECAST
    func dispatchForForecast() {
        self.dataloader.pullAndDecodeJSONForecast { [weak self] data in
            DispatchQueue.main.async {
                self?.firstLbl.text = "\(Int(data.list[0].main.temp))°"
                self?.secondLbl.text = "\(Int(data.list[1].main.temp))°"
                self?.thirdLbl.text = "\(Int(data.list[2].main.temp))°"
                self?.fourLbl.text = "\(Int(data.list[3].main.temp))°"
                self?.fiveLbl.text = "\(Int(data.list[4].main.temp))°"
                self?.decriptionLbl.text = "\(data.list[0].weather[0].main)"
                
                self?.firstdayLbl.text = self?.convertDate(Date(timeIntervalSince1970: Double(((data.list[0].dt)))))
                self?.seconddayLbl.text = self?.convertDate(Date(timeIntervalSince1970: Double(((data.list[8].dt)))))
                self?.thirddayLbl.text = self?.convertDate(Date(timeIntervalSince1970: Double(((data.list[16].dt)))))
                self?.fourdayLbl.text = self?.convertDate(Date(timeIntervalSince1970: Double(((data.list[24].dt)))))
                self?.fivedayLbl.text = self?.convertDate(Date(timeIntervalSince1970: Double(((data.list[32].dt)))))
                
                switch data.list[0].weather[0].main {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.icons
                    self?.firstLblImage.image = self?.cityWeatherImageVariable
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.icons
                    self?.firstLblImage.image = self?.cityWeatherImageVariable
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.icons
                    self?.firstLblImage.image = self?.cityWeatherImageVariable
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.icons
                    self?.firstLblImage.image = self?.cityWeatherImageVariable
                }
                
                switch data.list[1].weather[0].main {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.icons
                    self?.secondlblImage.image = self?.cityWeatherImageVariable
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.icons
                    self?.secondlblImage.image = self?.cityWeatherImageVariable
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.icons
                    self?.secondlblImage.image = self?.cityWeatherImageVariable
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.icons
                    self?.secondlblImage.image = self?.cityWeatherImageVariable
                }
                switch data.list[2].weather[0].main {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.icons
                    self?.thirdLblImage.image = self?.cityWeatherImageVariable
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.icons
                    self?.thirdLblImage.image = self?.cityWeatherImageVariable
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.icons
                    self?.thirdLblImage.image = self?.cityWeatherImageVariable
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.icons
                    self?.thirdLblImage.image = self?.cityWeatherImageVariable
                }
                
                switch data.list[3].weather[0].main {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.icons
                    self?.fourLblImage.image = self?.cityWeatherImageVariable
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.icons
                    self?.fourLblImage.image = self?.cityWeatherImageVariable
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.icons
                    self?.fourLblImage.image = self?.cityWeatherImageVariable
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.icons
                    self?.fourLblImage.image = self?.cityWeatherImageVariable
                }
                switch data.list[4].weather[0].main {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.icons
                    self?.fiveLblImage.image = self?.cityWeatherImageVariable
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.icons
                    self?.fiveLblImage.image = self?.cityWeatherImageVariable
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.icons
                    self?.fiveLblImage.image = self?.cityWeatherImageVariable
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.icons
                    self?.fiveLblImage.image = self?.cityWeatherImageVariable
                }
                
                switch self?.decriptionLbl.text {
                case "Rain":
                    self?.cityWeatherImageVariable = Appstyle.rainy.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.rainy.color
                    self?.view.backgroundColor = Appstyle.rainy.color
                    self?.frontView.backgroundColor = Appstyle.rainy.color
                case "Clouds":
                    self?.cityWeatherImageVariable = Appstyle.clouds.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.clouds.color
                    self?.view.backgroundColor = Appstyle.clouds.color
                    self?.frontView.backgroundColor = Appstyle.clouds.color
                case "Sunny":
                    self?.cityWeatherImageVariable = Appstyle.sunny.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.sunny.color
                    self?.view.backgroundColor = Appstyle.sunny.color
                    self?.frontView.backgroundColor = Appstyle.sunny.color
                default:
                    self?.cityWeatherImageVariable = Appstyle.others.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.others.color
                    self?.view.backgroundColor = Appstyle.others.color
                    self?.frontView.backgroundColor = Appstyle.others.color
                }
            }
        }
    }
    
    func convertDate(_ date: Date?) -> String {
        guard let inputDate = date else {
            return ""
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE" // Monday
        return formatter.string(from: inputDate)
    }
}
