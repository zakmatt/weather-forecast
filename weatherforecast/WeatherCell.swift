//
//  TableCell.swift
//  weatherforecast
//
//  Created by Admin on 29/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!

    func configureCell(forecast: Forecast) {
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        highTempLabel.text = forecast.highTemp
        lowTempLabel.text = forecast.lowTemp
    }
    
}
