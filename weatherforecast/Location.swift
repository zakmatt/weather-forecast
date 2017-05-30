//
//  Location.swift
//  weatherforecast
//
//  Created by Admin on 29/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
