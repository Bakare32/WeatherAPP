//
//  ExtendViewController.swift
//  week-6-task
//
//  Created by  Decagon on 11/08/2021.
//

import UIKit

extension HomeViewController {
    //MARK: - METHOD FOR CURRENT
    func dispatchForCurrent() {
        self.dataloader.pullAndDecodeJSONData { [weak self] data in
            DispatchQueue.main.async {
                self?.currentLbl.text = "\(Int(data.main.temp))°"
                self?.maxLbl.text = "\(Int(data.main.maxTemp))°"
                self?.minLbl.text = "\(Int(data.main.minTemp))°"
                self?.mainLbl.text = "\(Int(data.main.temp))°"
                self?.decriptionLbl.text = data.weather[0].main.uppercased()
                
                switch self?.decriptionLbl.text {
                case "RAIN":
                    self?.cityWeatherImageVariable = Appstyle.rainy.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.rainy.color
                    self?.view.backgroundColor = Appstyle.rainy.color
                    self?.frontView.backgroundColor = Appstyle.rainy.color
                case "CLOUDS":
                    self?.cityWeatherImageVariable = Appstyle.clouds.images
                    self?.imageLbl.image = self?.cityWeatherImageVariable
                    self?.superView.backgroundColor = Appstyle.clouds.color
                    self?.view.backgroundColor = Appstyle.clouds.color
                    self?.frontView.backgroundColor = Appstyle.clouds.color
                    
                case "SUNNY":
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
    
}
