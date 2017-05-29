//
//  Forecast.swift
//  weatherforecast
//
//  Created by Admin on 29/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, Any>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, Any> {
            if let min = temp["min"] as? Double {
                let temperature = (100 * (min - 272.15)).rounded() / 100
                self._lowTemp = "\(temperature)"
            }
            if let max = temp["max"] as? Double {
                let temperature = (100 * (max - 272.15)).rounded() / 100
                self._highTemp = "\(temperature)"
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, Any>] {
            if let main = weather[0]["main"] as? String {
                _weatherType = main
            }
        }
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
