//
//  constants.swift
//  weatherforecast
//
//  Created by Admin on 27/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import Foundation

let BASE = "http://samples.openweathermap.org/data/2.5/"
let WEATHER = "weather"
let FORECAST = "forecast"
let LATTITUDE = "lat="
let LONGITUDE = "lon="
let APP_ID = "appid="
let API_KEY = "31ca7af283be0c59b518810b4965ed76"
let CNT = "cnt="

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE)\(WEATHER)?\(LATTITUDE)35&\(LONGITUDE)139&\(APP_ID)\(API_KEY)"
let CURRENT_FORECAST_URL = "\(BASE)\(FORECAST)?\(LATTITUDE)35&\(LONGITUDE)139&\(CNT)10&\(APP_ID)\(API_KEY)"
