//
//  ViewController.swift
//  week 6 task
//
//  Created by  Decagon on 07/08/2021.
//

import UIKit

// MARK: - CLASS
class HomeViewController: UIViewController {
    
    @IBOutlet var decriptionLbl: UILabel!
    @IBOutlet var firstLbl: UILabel!
    @IBOutlet var firstdayLbl: UILabel!
    @IBOutlet var firstLblImage: UIImageView!
    @IBOutlet var secondLbl: UILabel!
    @IBOutlet var seconddayLbl: UILabel!
    @IBOutlet var secondlblImage: UIImageView!
    @IBOutlet var fiveLbl: UILabel!
    @IBOutlet var fivedayLbl: UILabel!
    @IBOutlet var fiveLblImage: UIImageView!
    @IBOutlet var fourLbl: UILabel!
    @IBOutlet var fourdayLbl: UILabel!
    @IBOutlet var fourLblImage: UIImageView!
    @IBOutlet var thirddayLbl: UILabel!
    @IBOutlet var thirdLbl: UILabel!
    @IBOutlet var thirdLblImage: UIImageView!
    @IBOutlet var currentLbl: UILabel!
    @IBOutlet var mainLbl: UILabel!
    @IBOutlet var maxLbl: UILabel!
    @IBOutlet var minLbl: UILabel!
    @IBOutlet var imageLbl: UIImageView!
    @IBOutlet var iconLbl: UIImageView!
    @IBOutlet var superView: UIView!
    @IBOutlet var frontView: UIView!
    
    
    //MARK: - PROPERTIES
    var cityWeatherImageVariable: UIImage = UIImage()
    var iconImageVariable: UIImage = UIImage()
    let dataloader = Loader()
    
    override func viewDidLoad() {
        dispatchForCurrent()
        dispatchForForecast()
        super.viewDidLoad()
    }
}

