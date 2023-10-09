//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import CoreLocation
import Foundation

class LocationService: NSObject {
    let locationManager = CLLocationManager()
    var locationUpdatedCallback: ((Coord) -> Void)?

    func setup() {
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationService: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if manager.authorizationStatus == .authorizedAlways ||
            manager.authorizationStatus == .authorizedWhenInUse
        {
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        let coord = Coord(lon: locValue.longitude, lat: locValue.latitude)
        locationUpdatedCallback?(coord)
        locationUpdatedCallback = nil
        locationManager.stopUpdatingLocation()
    }
}
