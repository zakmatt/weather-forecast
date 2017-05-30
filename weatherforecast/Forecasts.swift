//
//  Forecasts.swift
//  weatherforecast
//
//  Created by Admin on 29/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import Foundation
import Alamofire

class Forecasts {
    var _forecasts: [Forecast]!
    
    var forecasts: [Forecast] {
        if _forecasts == nil {
            _forecasts = [Forecast]()
        }
        return _forecasts
    }
    
    init() {
        _forecasts = [Forecast]()
    }
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        let forecastUrl = URL(string: CURRENT_FORECAST_URL)!
        print(forecastUrl)
        Alamofire.request(forecastUrl).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, Any> {
                if let list = dict["list"] as? [Dictionary<String, Any>] {
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self._forecasts.append(forecast)
                    }
                    self._forecasts.remove(at: 0) // remove first index!
                }
            }
            completed()
        }
    }
}
