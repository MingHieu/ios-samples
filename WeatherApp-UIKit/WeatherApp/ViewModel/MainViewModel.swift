//
//  MainViewModel.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import Foundation

class MainViewModel {
    let locationServicce = LocationService()
    let currentWeather: Observable<CurrentWeatherModel> = Observable(nil)

    func getCurrentWeather() {
        locationServicce.locationUpdatedCallback = { coord in
            APICaller.getCurrentWeather(coord: coord, completionHandler: { [weak self] result in
                switch result {
                case .success(let data):
                    self?.currentWeather.value = data
                case .failure(let error):
                    print(error)
                }
            })
        }
        locationServicce.setup()
    }
}
