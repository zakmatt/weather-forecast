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
let FORECAST = "forecast/daily"
let LATTITUDE = "lat="
let LATITUDE_VALUE = "45.5"//"\(Location.sharedInstance.latitude)"
let LONGITUDE = "lon="
let LONGITUDE_VALUE = "73.56"//"\(Location.sharedInstance.longitude)"
let APP_ID = "appid="
let API_KEY = "31ca7af283be0c59b518810b4965ed76"
let CNT = "cnt="

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE)\(WEATHER)?\(LATTITUDE)\(LATITUDE_VALUE)&\(LONGITUDE)\(LONGITUDE_VALUE)&\(APP_ID)\(API_KEY)"
let CURRENT_FORECAST_URL = "\(BASE)\(FORECAST)?\(LATTITUDE)\(LATITUDE_VALUE)&\(LONGITUDE)\(LONGITUDE_VALUE)&\(CNT)10&\(APP_ID)b1b15e88fa797225412429c1c50c122a1"
